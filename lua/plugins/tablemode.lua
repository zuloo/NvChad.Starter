return {
  {
    "dhruvasagar/vim-table-mode",
    lazy = false,
    init = function()
      vim.api.nvim_command("let g:table_mode_corner_corner='|'")
      vim.api.nvim_command("let g:table_mode_header_fillchar='='")
    end,
  }
}
