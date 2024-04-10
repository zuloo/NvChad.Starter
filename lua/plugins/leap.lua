return {
  {
    "ggandor/leap.nvim",
    lazy = false,
    init = function()
      vim.keymap.set({'n', 'x', 'o'}, 'f',  '<Plug>(leap-forward)')
      vim.keymap.set({'n', 'x', 'o'}, 'F',  '<Plug>(leap-backward)')
      vim.keymap.set({'n', 'x', 'o'}, 'gf', '<Plug>(leap-from-window)')
    end
  }
}
