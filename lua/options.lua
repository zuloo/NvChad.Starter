require "nvchad.options"

local api, opt = vim.api, vim.opt

opt.colorcolumn = "80,100"
api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "gitcommit",
    callback = function()
      opt.colorcolumn = "50,72"
    end
  }
)

opt.relativenumber = true
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

