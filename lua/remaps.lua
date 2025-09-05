--[[
    'remaps.lua' sets all key remaps that are needed.
]]--

-- handy remap function
local function remap(mode, lhs, rhs)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend("force", options)
    end
    if type(rhs) == "function" then
        vim.keymap.set(mode, lhs, rhs, options)
    else
        vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
end

remap("n", "<left>", "3h")
remap("n", "<down>", "3j")
remap("n", "<up>", "3k")
remap("n", "<right>", "3l")

-- disable those! (maybe remap them for something useful)
--[[
local modes = {"n", "v", "i", "c"}
local keys = {"<up>", "<down>", "<left>", "<right>"}
for _, mode in ipairs(modes) do
  for _, key in ipairs(keys) do
      remap(mode, key, "<nop>")
  end
end
]]--

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
remap("v", "\"", 'c""<Esc>hp')

-- some splits remaps
remap("n", "<C-h>", "<C-w>h")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-k>", "<C-w>k")
remap("n", "<C-l>", "<C-w>l")

-- neotree remaps
remap("n", "<C-m>", "<Cmd>Neotree toggle<CR>")

return remap
