-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "solarized_aims",

  hl_override = {
    DiffAdd = { fg="none", bg={"green", -17}},
    DiffChange = { fg="none", bg={"teal", -23}},
    DiffDelete = { fg="none", bg={"red", -25}},
    DiffText = { fg="none", bg={"red", -25}},

    MiniMapNormal = { fg="grey"}
  },
}

return M
