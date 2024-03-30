return {
  "xiyaowong/virtcolumn.nvim",
  event = "BufEnter",
  init = function()
    local api = vim.api
    local bg = api.nvim_get_hl_by_name('NonText', true).foreground
    if bg then
      api.nvim_command(
        string.format(':highlight VirtColumn guifg=#%s', bg)
      )
    end
  end
}
