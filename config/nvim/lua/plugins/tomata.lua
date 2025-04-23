local notify = function(msg, level)
  vim.notify(msg, level or vim.log.levels.INFO, { title = "🍅 Tomata" })
end

local M = { timer = nil }

function M.start(duration) -- Duration in minutes
  if M.timer then
    M.stop()
  end

  duration = tonumber(duration) or 25 -- Default to 25 minutes
  M.timer = vim.uv.new_timer()

  if not M.timer then
    notify("Failed to create timer", vim.log.levels.ERROR)
    return
  end

  M.timer:start(duration * 60 * 1000, 0, function()
    notify("Time is up!")
    M.stop()
  end)

  notify("Starting pomodoro timer for " .. duration .. " minutes")
end

function M.stop()
  if M.timer then
    M.timer:stop()
    M.timer:close()
    M.timer = nil
  end
end

vim.api.nvim_create_user_command("Tomata", function(opts)
  if opts.bang then
    M.stop()
    notify("Timer stopped")
    return
  end
  M.start(opts.args)
end, { nargs = "?", bang = true })
