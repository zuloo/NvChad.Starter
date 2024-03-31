-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  -- theme_toggle == { day_theme, night_theme }
  theme_toggle = { "solarized_day", "solarized_night" },
	theme = "solarized_day",

  hl_override = {
    DiffAdd = { fg="none", bg={"green", -17}},
    DiffChange = { fg="none", bg={"teal", -23}},
    DiffDelete = { fg="none", bg={"red", -25}},
    DiffText = { fg="none", bg={"red", -25}},
  },

  telescope = { style = "bordered" },

  cheatsheet = { theme = "simple" },

  statusline = {
    order = {
      "mode",
      "file",
      "git",
      "%=",
      "lsp_msg",
      "%=",
      "diagnostics",
      "lsp",
      "pomodori",
      "cwd",
      "cursor"
    },
    modules =  {
      pomodori = function()
        return require("utils").get_next_pomodori_timer()
       end,
    }
  },

  nvdash = {
      load_on_startup = true,
  }
}

M.base46 = {
 integrations = {
    "notify",
  }
}

return M
