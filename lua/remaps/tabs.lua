local remap = require("remaps.init").remap

remap("i", "{}", "{}")
remap("i", "[]", "[]")
remap("i", "()", "()")
remap("i", '""', '""')

remap("i", "{{", "{")
remap("i", "[[", "[")
remap("i", "((", "(")
remap("i", '""', '"')

remap("i", "{", "{}<Esc>ha")
remap("i", "[", "[]<Esc>ha")
remap("i", "(", "()<Esc>ha")
remap("i", '"', '""<Esc>ha')

remap("i", "{<CR>", "{<CR>}<Esc>k$a<CR>")
remap("i", "[<CR>", "[<CR>]<Esc>k$a<CR>")
remap("i", "(<CR>", "(<CR>)<Esc>k$a<CR>")

remap("v", "(", "c()<Esc>hp")
remap("v", "[", "c[]<Esc>hp")
remap("v", "{", "c{}<Esc>hp")
