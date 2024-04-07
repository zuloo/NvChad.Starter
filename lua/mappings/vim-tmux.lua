local map = vim.keymap.set

map("n", "<c-h>", ":TmuxNavigateLeft<cr>",{ desc="Move Left" })
map("n", "<c-j>", ":TmuxNavigateDown<cr>",{ desc="Move Down" })
map("n", "<c-k>", ":TmuxNavigateUp<cr>",{ desc="Move Up" })
map("n", "<c-l>", ":TmuxNavigateRight<cr>",{ desc="Move Right" })
map("n", "<c-\\>", ":TmuxNavigatePrevious<cr>",{ desc="Move to Previous Split" })
map("i", "<c-h>", ":TmuxNavigateLeft<cr>",{ desc="Move Left" })
map("i", "<c-j>", ":TmuxNavigateDown<cr>",{ desc="Move Down" })
map("i", "<c-k>", ":TmuxNavigateUp<cr>",{ desc="Move Up" })
map("i", "<c-l>", ":TmuxNavigateRight<cr>",{ desc="Move Right" })
map("i", "<c-\\>", ":TmuxNavigatePrevious<cr>",{ desc="Move to Previous Split" })
