-- set timezone
local ui = require("nvconfig").base46

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
    local b46 = require("base46")
    b46.toggle_theme()
    local hours = tonumber(os.date('%H', os.time()))
    if hours > 7 and hours < 20 then
      if ui.theme ~= ui.theme_toggle[1] then
        b46.toggle_theme()
        M.set_virt_column_color()
      end else
      if ui.theme == ui.theme_toggle[1] then
        b46.toggle_theme()
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
     time_str = time_str.gsub(time_str, '.*,', '')
     time_str = time_str.gsub(time_str, '[ ]*Bell:', '')
     time_str = time_str.gsub(time_str, ' 0', ' ')
     time_str = time_str.gsub(time_str, ':', '')
     time_str = time_str.gsub(time_str, "%(paused%)", '󰏤')
     return "%#St_TimerDivider#%#St_TimerIcon#󰂚%#St_Timer#" ..  time_str .. " "
  end,

  setup_nvimtree = function()
    local nt_api = require'nvim-tree.api'

    nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
      local tree_winid = nt_api.tree.winid()

      if tree_winid ~= nil then
        vim.api.nvim_set_option_value('statusline', '%t', {win = tree_winid})
      end
    end)
  end
}

return M
