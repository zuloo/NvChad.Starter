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
    -- Make :bd and :q behave as usual when tree is visible
    vim.api.nvim_create_autocmd({'BufEnter', 'QuitPre'}, {
      nested = false,
      callback = function(e)
        local tree = require('nvim-tree.api').tree

        -- Nothing to do if tree is not opened
        if not tree.is_visible() then
          return
        end

        -- How many focusable windows do we have? (excluding e.g. incline status window)
        local winCount = 0
        for _,winId in ipairs(vim.api.nvim_list_wins()) do
          if vim.api.nvim_win_get_config(winId).focusable then
            winCount = winCount + 1
          end
        end

        -- We want to quit and only one window besides tree is left
        if e.event == 'QuitPre' and winCount == 2 then
          vim.api.nvim_cmd({cmd = 'qall'}, {})
        end

        -- :bd was probably issued an only tree window is left
        -- Behave as if tree was closed (see `:h :bd`)
        if e.event == 'BufEnter' and winCount == 1 then
          -- Required to avoid "Vim:E444: Cannot close last window"
          vim.defer_fn(function()
            -- close nvim-tree: will go to the last buffer used before closing
            tree.toggle({find_file = true, focus = true})
            -- re-open nivm-tree
            tree.toggle({find_file = true, focus = false})
          end, 10)
        end
      end
    })

    local nt_api = require'nvim-tree.api'

    nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
      local bufnr = vim.api.nvim_get_current_buf()
      local api = require('nvim-tree.api')

      -- Important: When you supply an `on_attach` function, nvim-tree won't
      -- automatically set up the default keymaps. To set up the default keymaps,
      -- call the `default_on_attach` function. See `:help nvim-tree-quickstart-custom-mappings`.
      api.config.mappings.default_on_attach(bufnr)

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      local preview = require('nvim-tree-preview')

      vim.keymap.set('n', 'P', preview.watch, opts 'Preview (Watch)')
      vim.keymap.set('n', '<Esc>', preview.unwatch, opts 'Close Preview/Unwatch')
      vim.keymap.set('n', '<C-f>', function() return preview.scroll(4) end, opts 'Scroll Down')
      vim.keymap.set('n', '<C-b>', function() return preview.scroll(-4) end, opts 'Scroll Up')

      -- Option A: Smart tab behavior: Only preview files, expand/collapse directories (recommended)
      vim.keymap.set('n', '<Tab>', function()
        local ok, node = pcall(api.tree.get_node_under_cursor)
        if ok and node then
          if node.type == 'directory' then
            -- api.node.open.edit()
          else
            preview.node(node, { toggle_focus = true })
          end
        end
      end, opts 'Preview')

      -- Option B: Simple tab behavior: Always preview
      -- vim.keymap.set('n', '<Tab>', preview.node_under_cursor, opts 'Preview')
      end)
  end
}

return M
