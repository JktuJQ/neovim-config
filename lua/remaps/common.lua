local remap = require("remaps.init").remap

remap("i", "kk", "<Esc>")

remap("n", "<Esc>", "<Cmd>nohlsearch<CR>")
