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

map("n", "<leader>pv", ":TimerShow -1<CR>", {
  desc = "Pomodori View Active Timer"
})

map("n", "<leader>ph", ":TimerHide -1<CR>", {
  desc = "Pomodori Hide Active Timer"
})

map("n", "<leader>pp", ":TimerPause -1<CR>", {
  desc = "Pomodori Pause Active Timer"
})

map("n", "<leader>pr", ":TimerResume -1<CR>", {
  desc = "Pomodori Resume Active Timer"
})

map("n", "<leader>ps", ":TimerStop -1<CR>", {
  desc = "Pomodori Stop Active Timer"
})

