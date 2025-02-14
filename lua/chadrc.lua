-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  -- theme_toggle == { day_theme, night_theme }
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
}

M.nvdash = {
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
    "                                 ",
    "                                 ",
  },
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  DataBases", keys = "Spc d b", cmd = "DBUI" },
    { txt = "󰃮  Agenda", keys = "Spc o a", cmd = "" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
  },
}

M.base46 = {
  integrations = {
    "notify",
  },

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
}

return M
