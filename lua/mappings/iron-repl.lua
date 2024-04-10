local map = vim.keymap.set

map("n", "<space>rs", ":IronRepl<cr>", {
  desc="Repl Open/Show"
})
map("n", "<space>rr", ":IronRestart<cr>", {
  desc="Repl Restart"
})
map("n", "<space>rf", ":IronFocus<cr>", {
  desc="Repl Focus"
})
map("n", "<space>rh", ":IronHide<cr>", {
  desc="Repl Hide"
})
