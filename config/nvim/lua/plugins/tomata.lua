local notify = function(msg, level)
  vim.notify(msg, level or vim.log.levels.INFO, { title = "🍅 Tomata" })
end

local Tomata = { timer = nil }

function Tomata.start(duration) -- Duration in minutes
  if Tomata.timer then
    Tomata.stop()
  end

  duration = tonumber(duration) or 25 -- Default to 25 minutes
  Tomata.timer = vim.uv.new_timer()

  if not Tomata.timer then
    notify("Failed to create timer", vim.log.levels.ERROR)
    return
  end

  Tomata.timer:start(duration * 60 * 1000, 0, function()
    notify("Time is up!")
    Tomata.stop()
  end)

  notify("Tomata started for " .. duration .. " minutes")
end

function Tomata.stop()
  if Tomata.timer then
    Tomata.timer:stop()
    Tomata.timer:close()
    Tomata.timer = nil
  end
end

vim.api.nvim_create_user_command("Tomata", function(opts)
  if opts.bang then
    Tomata.stop()
    return
  end
  Tomata.start(opts.args)
end, { nargs = "?", bang = true })
