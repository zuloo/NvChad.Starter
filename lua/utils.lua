-- set timezone
local timeShift = 1 * 60 * 60  -- +1 hours

local ui = require("nvconfig").ui

M = {
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
    if hours > 7 and hours < 20 then
      if ui.theme ~= ui.theme_toggle[1] then
        require("base46").toggle_theme()
        M.set_virt_column_color()
      end
    else
      if ui.theme == ui.theme_toggle[1] then
        require("base46").toggle_theme()
        M.set_virt_column_color()
      end
    end
  end,

  get_next_pomodori_timer = function()
     local ok, pomo = pcall(require, "pomo")
     if not ok then
       return ""
     end

     local timer = pomo.get_first_to_finish()
     if timer == nil then
       return ""
     end
     local time_str = tostring(timer)
     time_str = time_str.gsub(time_str, '.*: ', '')
     time_str = time_str.gsub(time_str, "%(paused%)", '󰏤')
     return "%#St_Timer# 󰄉 " ..  time_str .. " "
  end
}

return M
-- set timezone
local timeShift = 1 * 60 * 60  -- +1 hours

local ui = require("nvconfig").ui

M = {
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
    if hours > 7 and hours < 20 then
      if ui.theme ~= ui.theme_toggle[1] then
        require("base46").toggle_theme()
        M.set_virt_column_color()
      end
    else
      if ui.theme == ui.theme_toggle[1] then
        require("base46").toggle_theme()
        M.set_virt_column_color()
      end
    end
  end
}

return M
