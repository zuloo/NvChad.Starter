return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
        _signs_staged = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
        _signs_staged_enable= true,
        numhl = true,
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 100
        },
        attach_to_untracked = false,
        on_attach = function(bufnr)
          require('base46').load_all_highlights()

          local function hl(group, fg, bg)
            fg = fg or "none"
            bg = bg or "none"

            vim.api.nvim_command(
              string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
            )
          end

          hl('GitSignsAdd', '#849900')
          hl('GitSignsChange', '#519ABA')
          hl('GitSignsDelete', '#db302d')

          hl('GitSignsAddNr', '#849900')
          hl('GitSignsChangeNr', '#519ABA')
          hl('GitSignsDeleteNr', '#db302d')

          hl('GitSignsStagedAdd', '#4b5700')
          hl('GitSignsStagedChange', '#2a576a')
          hl('GitSignsStagedDelete', '#7e1715')

          hl('GitSignsStagedAddNr', '#4b5700')
          hl('GitSignsStagedChangeNr', '#2a576a')
          hl('GitSignsStagedDeleteNr', '#7e1715')

          local gs = package.loaded.gitsigns
          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, {expr=true})

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, {expr=true})
        end
      }
    end
  },
  {
    "tpope/vim-fugitive",
    lazy = false
  }
}
