return {
  "xiyaowong/virtcolumn.nvim",
  event = "BufEnter",
  init = function()
    require("utils").set_virt_column_color()
  end
}
