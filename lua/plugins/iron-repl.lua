return {
  {
    "Vigemus/iron.nvim",
    cmd = { "IronRepl", "IronRestart", "IronFocus", "IronHide" },
    config = function()
      local iron = require "iron.core"

      iron.setup {
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            lua = { command = { "lua -i" } },
            sh = { command = { 'bash' } },
            python = { command = { 'ipython' } },
            js = { command = { "node -i" } }
          },
          -- How the repl window will be displayed
          -- See below for more information
          repl_open_cmd = require("iron.view").split.vertical("45%", {
            number = false,
            relativenumber = false
          }),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = "<space>sr",
          visual_send = "<space>sr",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_until_cursor = "<space>su",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {},
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      }
    end,
  },
}
