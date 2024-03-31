-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  -- theme_toggle == { day_theme, night_theme }
  theme_toggle = { "solarized_day", "solarized_night" },
	theme = "solarized_day",

  hl_add = {
    St_TimerDivider = { fg="one_bg2", bg="one_bg" },
    St_TimerIcon = { fg="pink", bg="one_bg2" },
    St_Timer = { fg="pink", bg="one_bg2" },
  },

  hl_override = {
    DiffAdd = { fg="none", bg={"green", -17}},
    DiffChange = { fg="none", bg={"teal", -23}},
    DiffDelete = { fg="none", bg={"red", -25}},
    DiffText = { fg="none", bg={"red", -25}},
  },

  telescope = {
    style = "bordered",
  },

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
      header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
     },
     buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  DataBases", "Spc d b", "DBUI" },
      { "󰃮  Agenda", "Spc o a", "" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  }
}

M.base46 = {
 integrations = {
    "notify",
  }
}

return M
