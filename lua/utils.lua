return {
  set_virt_column_color = function()
    local config = require "nvconfig"
    if string.find(config.ui.theme, "light") then
      vim.api.nvim_command(":highlight VirtColumn guifg=#d7d7af")
    else
      vim.api.nvim_command(":highlight VirtColumn guifg=#03394F")
    end
  end
}
