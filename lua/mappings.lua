require "nvchad.mappings"

-- add yours here
require "mappings.git"
require "mappings.dadbod"
require "mappings.pomodori"


local map = vim.keymap.set

map("v", "<leader>sc", ":Silicon<CR>", { desc="Snapshot Code" })

map("n", "<leader>n", function()
  vim.opt.number = not vim.opt.number._value
  return '<Ignore>'
end, {expr=true, desc="Toggle Line Numbers"})

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      relative="editor",
      row="0.0",
      col="0.0",
      height="0.4",
      width="1.0",
      border="single"
    }
  }
  return '<Ignore>'
end, { desc = "Terminal Toggle Floating term" })

map({ "n", "t"}, "<leader>tt", function()
  require("base46").toggle_theme()
  require("utils").set_virt_column_color()
  return '<Ignore>'
end, {expr=true, desc="Toggle switch dark/light theme"})

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
