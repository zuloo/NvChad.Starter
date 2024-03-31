local map = vim.keymap.set

map("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {
  desc="Git preview hunk"
})
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {
  desc="Git toggle current line blame"
})

map("n", "<leader>gn", ":Gitsigns next_hunk<CR>", {
  desc="Git jump to next hunk"
})
map("n", "<leader>gN", ":Gitsigns prev_hunk<CR>", {
  desc="Git jump to previous hunk"
})

map("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", {
  desc="Git stage hunk"
})
map("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", {
  desc="Git unstage hunk"
})
map("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {
  desc="Git reset hunk"
})

map("n", "<leader>gS", ":Gitsigns stage_buffer<CR>", {
  desc="Git stage all hunks in buffer"
})
map("n", "<leader>gR", ":Gitsigns reset_buffer_index<CR>", {
  desc="Git reset buffer index"
})
map("n", "<leader>gU", ":Gitsigns reset_buffer<CR>", {
  desc="Git reset buffer"
})

map("n", "<leader>gg", ":Git<CR>", {
  desc="Git git info"
})
map("n", "<leader>gc", ":Git commit | startinsert<CR>", {
  desc="Git commit staged changes"
})

map("n", "<leader>gd", ":Git difftool<CR>", {
  desc="Git Diff Tool"
})
map("n", "<leader>gm", ":Git mergetool<CR>", {
  desc="Git Merge Tool"
})

map("n", "<leader>g_", ":Gdiffsplit<CR>", {
  desc="Git open git diff split horizontal"
})
map("n", "<leader>g|", ":Gvdiffsplit<CR>", {
  desc="Git open git diff split vertical"
})

map("n", "<leader>gw", function()
    require('telescope').load_extension("git_worktree")
    vim.schedule(function()
      require('telescope').extensions.git_worktree.git_worktrees(
        { path_display = { "fold" }}
      )
    end)
    return '<Ignore>'
end, {expr=true, desc="Git Change/Delete Worktree"})

map("n", "<leader>go", function()
    require('telescope').load_extension("git_worktree")
    vim.schedule(function()
      require('telescope').extensions.git_worktree.create_git_worktree(
        { path_display = { "fold" }}
      )
    end)
    return '<Ignore>'
end, {expr=true, desc="Git Open/Create New Worktree"})
