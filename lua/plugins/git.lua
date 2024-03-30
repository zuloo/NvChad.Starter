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
          hl('GitSignsStagedChangedelete', '#2a576a')
          hl('GitSignsStagedDelete', '#7e1715')
          hl('GitSignsStagedTopdelete', '#7e1715')

          hl('GitSignsStagedAddNr', '#4b5700')
          hl('GitSignsStagedChangeNr', '#2a576a')
          hl('GitSignsStagedChangedeleteNr', '#2a576a')
          hl('GitSignsStagedDeleteNr', '#7e1715')
          hl('GitSignsStagedTopdeleteNr', '#7e1715')

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
          end, {expr=true, desc="Git jump to next change in diff"})

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, {expr=true, desc="Git jump to previous change in diff"})
        end
      }
    end
  },

  {
    "tpope/vim-fugitive",
    lazy = false
  },

  {
    "ThePrimeagen/git-worktree.nvim",
    config = function()
      require("git-worktree").setup({
          change_directory_command = "cd", -- default: "cd",
          update_on_change = true, -- default: true,
          update_on_change_command = "e .", -- default: "e .",
          clearjumps_on_change = true, -- default: true,
          autopush = true, -- default: false,
          confirm_telescope_deletions = true, -- default: false
      })
    end,
    init = function()
      local wt = require("git-worktree")

      -- op = Operations.Switch, Operations.Create, Operations.Delete
      -- metadata = table of useful values (structure dependent on op)
      --      Switch
      --          path = path you switched to
      --          prev_path = previous worktree path
      --      Create
      --          path = path where worktree created
      --          branch = branch name
      --          upstream = upstream remote name
      --      Delete
      --          path = path where worktree deleted

      wt.on_tree_change(function(op, meta)
        if op == wt.Operations.Switch then
          if meta.prev_path ~= meta.path then
            print("Switched from Worktree " .. meta.prev_path .. " to " .. meta.path)
          end
        end
        if op == wt.Operations.Create then
          print("Created Worktree " .. meta.path .. " [ " .. meta.branch .. meta.upstream .. " ]")
        end
        if op == wt.Operations.Delete then
          print("Deleted Worktree " .. meta.path)
        end
      end)
    end
  }
}
