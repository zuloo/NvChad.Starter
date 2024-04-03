local pomo = require "pomo"
local map = vim.keymap.set

map("n", "<leader>p5", ":TimerStart 5m Bell<CR>", {
  desc = "Pomodori Start 5 Minute Timer"
})

map("n", "<leader>p10", ":TimerStart 10m Bell<CR>", {
  desc = "Pomodori Start 10 Minute Timer"
})

map("n", "<leader>p15", ":TimerStart 15m Bell<CR>", {
  desc = "Pomodori Start 15 Minute Timer"
})

map("n", "<leader>p20", ":TimerStart 20m Bell<CR>", {
  desc = "Pomodori Start 20 Minute Timer"
})

map("n", "<leader>p25", ":TimerStart 25m Bell<CR>", {
  desc = "Pomodori Start 25 Minute Timer"
})

map("n", "<leader>p30", ":TimerStart 30m Bell<CR>", {
  desc = "Pomodori Start 30 Minute Timer"
})

map("n", "<leader>p40", ":TimerStart 40m Bell<CR>", {
  desc = "Pomodori Start 40 Minute Timer"
})

map("n", "<leader>p50", ":TimerStart 50m Bell<CR>", {
  desc = "Pomodori Start 50 Minute Timer"
})

map("n", "<leader>p60", ":TimerStart 60m Bell<CR>", {
  desc = "Pomodori Start 60 Minute Timer"
})

map("n", "<leader>pS", ":TimerStop -1<CR>", {
  desc = "Pomodori Stop All Timers"
})

map("n", "<leader>pP", ":TimerPause -1<CR>", {
  desc = "Pomodori Pause All Timers"
})

map("n", "<leader>pR", ":TimerResume -1<CR>", {
  desc = "Pomodori Resume All Timers"
})

map("n", "<leader>pV", ":TimerShow -1<CR>", {
  desc = "Pomodori View/Show All Timers"
})

map("n", "<leader>pH", ":TimerHide -1<CR>", {
  desc = "Pomodori Hide All Timers"
})
map("n", "<leader>pv", function()
  local timer = pomo.get_first_to_finish()
  if timer ~= nil then
    pomo.show_timer(timer)
  end
  return "<Ignore>"
end, { desc = "Pomodori View Next Timer"})

map("n", "<leader>ph", function()
  local timer = pomo.get_first_to_finish()
  if timer ~= nil then
    pomo.hide_timer(timer)
  end
  return "<Ignore>"
end, { desc = "Pomodori Hide Next Timer" })

map("n", "<leader>pp", function()
  local timer = pomo.get_first_to_finish()
  if timer ~= nil then
    pomo.pause_timer(timer)
  end
  return "<Ignore>"
end, { desc = "Pomodori Pause Next Timer" })

map("n", "<leader>pr", function()
  local timer = pomo.get_first_to_finish()
  if timer ~= nil then
    pomo.resume_timer(timer)
  end
  return "<Ignore>"
end, { desc = "Pomodori Resume Next Timer" })

map("n", "<leader>ps", function()
  local timer = pomo.get_first_to_finish()
  if timer == nil then
    return "<Ignore>"
  end
  local confirm = vim.fn.input(
    string.format("Stop timer %s? [y/n]: ", tostring(timer))
  )
  if string.sub(string.lower(confirm), 0, 1) == "y" then
    pomo.stop_timer(timer)
    return "<Ignore>"
  end
  print("Didn't stop timer")
  return "<Ignore>"
end, { desc = "Pomodori Resume Next Timer" })

map("n", "<leader>pt", function()
  require('telescope').extensions.pomodori.timers()
end, { desc = "Pomodori Manage All Timers"})
