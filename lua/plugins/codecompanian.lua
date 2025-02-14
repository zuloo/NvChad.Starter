return {
  {
    "github/copilot.vim",
    -- lazy = false,
    config = function()
      vim.g.copilot_assume_mapped = true
    end,
  },
  {
    "olimorris/codecompanion.nvim",
    -- lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    cmd = {
      'CodeCompanion',
      'CodeCompanionActions',
      'CodeCompanionChat',
      'CodeCompanionCmd',
    }
  }
}
