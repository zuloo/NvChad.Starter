require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})

map("n", "<leader>gn", ":Gitsigns next_hunk<CR>", {})
map("n", "<leader>gN", ":Gitsigns prev_hunk<CR>", {})

map("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", {})
map("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", {})
map("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {})

map("n", "<leader>gS", ":Gitsigns stage_buffer<CR>", {})
map("n", "<leader>gR", ":Gitsigns reset_buffer_index<CR>", {})
map("n", "<leader>gU", ":Gitsigns reset_buffer<CR>", {})

map("n", "<leader>gg", ":Git<CR>", {})
map("n", "<leader>gc", ":Git commit | startinsert<CR>", {})

map("n", "<leader>gd", ":Git difftool<CR>", {})
map("n", "<leader>gm", ":Git mergetool<CR>", {})

map("n", "<leader>g_", ":Gdiffsplit<CR>", {})
map("n", "<leader>g|", ":Gvdiffsplit<CR>", {})

map("n", "<leader>N", function()
  vim.opt.relativenumber = not vim.opt.relativenumber._value
  return '<Ignore>'
end, {expr=true, desc="Toggle Relative Line Numbers"})

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
end, { desc = "Terminal Toggle Floating term" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
