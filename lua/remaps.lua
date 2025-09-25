-- handy remap function
local function remap(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend("force", opts, options)
    end

    if type(rhs) == "function" then
        vim.keymap.set(mode, lhs, rhs, options)
    else 
        vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
end

-- fast movement
remap("n", "<left>", "3h")
remap("n", "<down>", "3j")
remap("n", "<up>", "3k")
remap("n", "<right>", "3l")

remap("v", "<left>", "3h")
remap("v", "<down>", "3j")
remap("v", "<up>", "3k")
remap("v", "<right>", "3l")

-- basic remaps
remap("i", "kk", "<Esc>")
remap("n", "<Esc>", "<cmd>nohlsearch<CR>")

remap("i", "<C-t>", "`")

-- some pairing symbols remaps
remap("i", "{}", "{}")
remap("i", "[]", "[]")
remap("i", "()", "()")
remap("i", '""', '""')

remap("i", "{{", "{")
remap("i", "[[", "[")
remap("i", "((", "(")

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

-- some splits remaps
remap("n", "<C-h>", "<C-w>h")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-k>", "<C-w>k")
remap("n", "<C-l>", "<C-w>l")

-- some leader remaps
remap("n", "<leader>w", ":wa<CR>")
remap("n", "<leader>q", ":qa!<CR>")

-- neotree remaps
remap("n", "<C-m>", "<Cmd>Neotree toggle<CR>")

-- barbar remaps
remap("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
remap("n", "<A-l>", "<Cmd>BufferNext<CR>")
remap("n", "<A-j>", "<Cmd>BufferMovePrevious<CR>")
remap("n", "<A-k>", "<Cmd>BufferMoveNext<CR>")
remap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
remap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
remap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
remap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
remap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
remap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
remap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
remap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
remap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
remap("n", "<A-0>", "<Cmd>BufferLast<CR>")
remap("n", "<A-P>", "<Cmd>BufferPin<CR>")
remap("n", "<A-q>", "<Cmd>BufferClose<CR>")
remap("n", "<A-f>", "<Cmd>BufferPick<CR>")
remap("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
remap("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>")
remap("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>")
remap("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>")
remap("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>")

return remap
