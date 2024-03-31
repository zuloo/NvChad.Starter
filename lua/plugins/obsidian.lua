return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
   event = {
     -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
     -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
     "BufReadPre " .. vim.fn.expand "~" .. "/Documents/obsidian/**.md",
     "BufNewFile " .. vim.fn.expand "~" .. "/Documents/obsidian/**.md",
   },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- see below for full list of optional dependencies 👇
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    "nvim-treesitter/nvim-treesitter",
    "epwalsh/pomo.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "priv",
        path = "~/Documents/obsidian/priv",
      },
      {
        name = "merck",
        path = "~/Documents/obsidian/merck",
      },
    },

    -- see below for full list of options 👇
  },
}
