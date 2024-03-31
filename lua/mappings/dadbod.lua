local map = vim.keymap.set

map("n" ,"<leader>db", ":DBUIToggle<CR>", {
  desc="DataBase Toggle DB Explorer"
})
map("n" ,"<leader>da", ":DBUIAddConnection<CR>", {
  desc="Database Add DB Connection"
})

