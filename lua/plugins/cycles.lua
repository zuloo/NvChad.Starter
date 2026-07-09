return {
  {
    'davidgranstrom/scnvim',
    lazy = true,
  },
  {
    'jbfits/cycles.nvim',
    cmd = {
      'CyclesLaunch',
      'CyclesQuit',
    },
    opts = {
      boot = {
        tidal = {
          --- Command to launch ghci with tidal installation
          cmd = "ghci",
          args = {
            "-v0",
          },
          file = vim.api.nvim_get_runtime_file("bootfiles/BootTidal.hs", false)[1],
          load = vim.split(vim.fn.glob(vim.fn.getcwd() .. "/boot/*.tidal"), '\n', {trimempty=true}),
          enabled = true,
        },
        sclang = {
          file =  vim.api.nvim_get_runtime_file("bootfiles/BootSuperDirt.scd", false)[1],
          load = vim.split(vim.fn.glob(vim.fn.getcwd() .. "/boot/*.scd"), '\n', {trimempty=true}),
          enabled = true,
          scnvim = true,
        },
        split = "v",
      },
      --- Default keymaps
      --- Set to false to disable all default mappings
      --- @type table | nil
      mappings = {
        send_line = { mode = { "i", "n" }, key = "<S-CR>" },
        send_visual = { mode = { "x" }, key = "<S-CR>" },
        send_block = { mode = { "i", "n", "x" }, key = "<M-CR>" },
        send_node = { mode = "n", key = "<leader><CR>" },
        send_silence = { mode = "n", key = "<leader>d" },
        send_hush = { mode = "n", key = "<leader><Esc>" },
        show_meter = { mode = {"n", "i", "x"}, key = "<F1>" },
        show_scope = { mode = {"n", "i", "x"}, key = "<F2>" },
        show_tree = { mode = {"n", "i", "x"}, key = "<F3>" },
      },
      ---- Configure highlight applied to selections sent to tidal interpreter
      selection_highlight = {
        --- Can be either the name of a highlight group or a highlight definition table
        --- see ':h nvim_set_hl' for details
        highlight = "IncSearch",
        --- Duration to apply the highlight for
        timeout = 150,
      },
    }
  }
}
