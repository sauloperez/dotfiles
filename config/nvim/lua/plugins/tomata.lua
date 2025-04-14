local notify = function(msg, level)
  vim.notify(msg, level or vim.log.levels.INFO, { title = "🍅 Tomata" })
end

local Tomata = { _timer = nil }

function Tomata.start(duration) -- Duration in minutes
  if Tomata._timer then
    Tomata.stop()
  end

  duration = tonumber(duration) or 25 -- Default to 25 minutes
  Tomata._timer = vim.uv.new_timer()

  if not Tomata._timer then
    notify("Failed to create timer", vim.log.levels.ERROR)
    return
  end

  Tomata._timer:start(duration * 60 * 1000, 0, function()
    notify("Time is up!")
    Tomata.stop()
  end)

  notify("Tomata started for " .. duration .. " minutes")
end

function Tomata.stop()
  if Tomata._timer then
    Tomata._timer:stop()
    Tomata._timer:close()
    Tomata._timer = nil
  end
end

vim.api.nvim_create_user_command("Tomata", function(opts)
  if opts.bang then
    Tomata.stop()
    notify("Tomata stopped")
    return
  end
  Tomata.start(opts.args)
end, { nargs = "?", bang = true })
