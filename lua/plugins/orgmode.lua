return {
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },
    event = 'VeryLazy',
    config = function()
      -- Setup treesitter
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
        },
        ensure_installed = { 'org' },
      })

      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/Documents/git/org/**/*',
        org_default_notes_file = '~/Documents/git/org/refile.org',
      })

      -- Setup Conceal 
      local api, opt = vim.api, vim.opt
      api.nvim_create_autocmd(
        "FileType",
        {
          pattern = "org",
          callback = function()
            opt.conceallevel = 2
            opt.concealcursor = 'nc'
          end
        }
      )
    end,
  },
  {
    "massix/org-checkbox.nvim",
    config = function()
      require("orgcheckbox").setup()
    end,
    ft = { "org", "md" },
  },
  {
    "dhruvasagar/vim-table-mode",
    lazy = false,
    init = function()
      vim.api.nvim_command("let g:table_mode_corner_corner='|'")
      vim.api.nvim_command("let g:table_mode_header_fillchar='='")
    end,
  }
}
