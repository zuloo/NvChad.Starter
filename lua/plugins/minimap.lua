return {
  'echasnovski/mini.map',
  version = "*",
  event = "BufEnter",
  config = function()
    local minimap_config = require "configs.minimap"
    MiniMap = require("mini.map")
    MiniMap.setup(minimap_config)

    local function map(mode, l, r, opts)
      opts = opts or {}
      vim.keymap.set(mode, l, r, opts)
    end

    map('n', '<leader>mm', function()
      MiniMap.toggle()
      return '<Ignore>'
    end, {expr=true, desc="Toggle Mini Map"})

    map('n', '<leader>mr', function()
      MiniMap.refresh()
      return '<Ignore>'
    end, {expr=true, desc="Refresh Mini Map"})

    map('n', '<leader>ms', function()
      MiniMap.toggle_side()
      return '<Ignore>'
    end, {expr=true, desc="Switch Mini Map Side"})
  end
}
