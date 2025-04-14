local notify = function(msg, level)
  vim.notify(msg, level or vim.log.levels.INFO, { title = "🍅 Tomata" })
end

local Tomata = { timer = nil, duration = nil }

function Tomata.start(duration)
  if Tomata.timer then
    Tomata.stop()
  end

  Tomata.duration = tonumber(duration) or (25 * 60) -- Default to 25 minutes
  Tomata.timer = vim.uv.new_timer()

  if not Tomata.timer then
    notify("Failed to create timer", vim.log.levels.ERROR)
    return
  end

  Tomata.timer:start(Tomata.duration * 1000, 0, function()
    notify("Time is up!")
    Tomata.stop()
  end)

  notify("Tomata started for " .. Tomata.duration / 60 .. " minutes")
end

function Tomata.stop()
  if Tomata.timer then
    Tomata.timer:stop()
    Tomata.timer:close()
    Tomata.timer = nil
  end
  Tomata.duration = nil
end

vim.api.nvim_create_user_command("Tomata", function(opts)
  if opts.bang then
    Tomata.stop()
    return
  end
  Tomata.start(opts.args)
end, { nargs = "?", bang = true })
