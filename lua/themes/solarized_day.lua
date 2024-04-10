--  SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
-- " --------- ------- ---- -------  ----------- ---------- ----------- -----------
-- " base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
-- " base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
-- " base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
-- " base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
-- " base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
-- " base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
-- " base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
-- " base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
-- " yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
-- " orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
-- " red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
-- " magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
-- " violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
-- " blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
-- " cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
-- " green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
--
---@type Base46Table
local M = {}

M.base_30 = {
  white = "#03394F",
  darker_black = "#eee8d5",
  black = "#fdf6e3", --  nvim bg
  black2 = "#ffffd7",
  one_bg = "#ffffd7", -- real bg of onedark
  one_bg2 = "#d7d7af",
  one_bg3 = "#cccc99",
  grey = "#405055",
  grey_fg = "#47585E",
  grey_fg2 = "#4F6369",
  light_grey = "#586E75",
  red = "#dc322f",
  baby_pink = "#eb413e",
  pink = "#af005f",
  line = "#cccc99", -- for lines like vertsplit
  green = "#5f8700",
  vibrant_green = "#b2c62d",
  nord_blue = "#197ec5",
  blue = "#0087ff",
  yellow = "#b58900",
  sun = "#e6ac00",
  purple = "#5f5faf",
  dark_purple = "#B02669",
  teal = "#519ABA",
  orange = "#cb4b16",
  cyan = "#2aa198",--
  statusline_bg = "#ffffd7",
  lightbg = "#d7d7af",
  pmenu_bg = "#29a298",
  folder_bg = "#0087ff",
}

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.one_bg,
  base02 = M.base_30.one_bg2,
  base03 = M.base_30.one_bg3,
  base04 = "#eee8d5",
  base05 = M.base_30.white,
  base06 = "#1b4651",
  base07 = "#044A67",
  base08 = "#268bd2",
  base09 = "#519ABA",
  base0A = "#b28500",
  base0B = "#29a298",
  base0C = "#c94c16",
  base0D = "#268bd2",
  base0E = "#849900",
  base0F = "#c94c16",
}

M.type = "light"

M.polish_hl = {
  treesitter = {
    ["@constant"] = { fg = "#29a298" }, -- could be deleted if #284 get merged
    ["@function"] = { fg = "#d33682" }, -- could be deleted if #284 get merged
    ["@operator"] = { fg = "#849900" },
    ["@variable.parameter"] = { fg = "#c94c16" },
    ["@function.builtin"] = { fg = "#c94c16" },
  },

  syntax = {
    Include = { fg = "#849900" },
    Tag = { fg = "#849900" },
  },

  defaults = {
    MatchWord = { fg = "#d7d7af", bg = "#586E75", standout = true},
    IncSearch = { fg = "#c94c16", bg = "none", standout = true },
  },

  lsp = {
    DiagnosticVirtualTextError = { bg = "#d7d7af" , fg = M.base_30.red },
    DiagnosticVirtualTextWarn = { bg = "#d7d7af", fg = M.base_30.yellow },
    DiagnosticVirtualTextInfo = { bg = "#d7d7af", fg = M.base_30.blue },
    DiagnosticVirtualTextHint = { bg = "#d7d7af", fg = M.base_30.purple },
    DiagnosticError = { bg = "#d7d7af" , fg = M.base_30.red },
    DiagnosticWarn = { bg = "#d7d7af", fg = M.base_30.yellow },
    DiagnosticInfo = { bg = "#d7d7af", fg = M.base_30.nord_blue },
    DiagnosticOk = { bg = "#d7d7af", fg = M.base_30.vibrant_green },
    DiagnosticHint = { bg = "#d7d7af", fg = M.base_30.purple },
  },
}
M = require("base46").override_theme(M, "solarized_light")

return M
