-- basic remaps
Snacks.keymap.set("i", "kk", "<Esc>")
Snacks.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

-- fast movement
Snacks.keymap.set("n", "<left>", "3h")
Snacks.keymap.set("n", "<down>", "3j")
Snacks.keymap.set("n", "<up>", "3k")
Snacks.keymap.set("n", "<right>", "3l")

Snacks.keymap.set("v", "<left>", "3h")
Snacks.keymap.set("v", "<down>", "3j")
Snacks.keymap.set("v", "<up>", "3k")
Snacks.keymap.set("v", "<right>", "3l")

-- pairing symbols
Snacks.keymap.set("i", "{}", "{}")
Snacks.keymap.set("i", "[]", "[]")
Snacks.keymap.set("i", "()", "()")
Snacks.keymap.set("i", '""', '""')

Snacks.keymap.set("i", "{{", "{")
Snacks.keymap.set("i", "[[", "[")
Snacks.keymap.set("i", "((", "(")
Snacks.keymap.set("i", '""', '"')

Snacks.keymap.set("i", "{", "{}<Esc>ha")
Snacks.keymap.set("i", "[", "[]<Esc>ha")
Snacks.keymap.set("i", "(", "()<Esc>ha")
Snacks.keymap.set("i", '"', '""<Esc>ha')

Snacks.keymap.set("i", "{<CR>", "{<CR>}<Esc>k$a<CR>")
Snacks.keymap.set("i", "[<CR>", "[<CR>]<Esc>k$a<CR>")
Snacks.keymap.set("i", "(<CR>", "(<CR>)<Esc>k$a<CR>")

Snacks.keymap.set("v", "(", "c()<Esc>hp")
Snacks.keymap.set("v", "[", "c[]<Esc>hp")
Snacks.keymap.set("v", "{", "c{}<Esc>hp")

-- splits
Snacks.keymap.set("n", "<C-h>", "<C-w>h")
Snacks.keymap.set("n", "<C-j>", "<C-w>j")
Snacks.keymap.set("n", "<C-k>", "<C-w>k")
Snacks.keymap.set("n", "<C-l>", "<C-w>l")
