local ui = require("nvconfig").ui

-- set timezone
local timeShift = 1 * 60 * 60  -- +3 hours

return {
  set_virt_column_color = function()
    if (ui.theme == ui.theme_toggle[1]) then
      vim.api.nvim_command(":highlight VirtColumn guifg=#d7d7af")
    else
      vim.api.nvim_command(":highlight VirtColumn guifg=#03394F")
    end
  end,

  choose_theme = function()
    -- automatigicaly choose day or night theme
    local hours = tonumber(os.date('%H', os.time() + timeShift))
    if (hours > 7 and hours < 20 and ui.theme ~= ui.theme_toggle[1]) then
      require("base46").toggle_theme()
    end
  end
}
