--[[
    'remaps.lua' sets all key remaps that are needed.
]]--

-- handy set_key function
local function set_key(mode, lhs, rhs)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend("force", options)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

set_key("n", "<left>", "3h")
set_key("n", "<down>", "3j")
set_key("n", "<up>", "3k")
set_key("n", "<right>", "3l")

-- disable those! (maybe remap them for something useful)
--[[
local modes = {"n", "v", "i", "c"}
local keys = {"<up>", "<down>", "<left>", "<right>"}
for _, mode in ipairs(modes) do
  for _, key in ipairs(keys) do
      set_key(mode, key, "<nop>")
  end
end
]]--

-- basic remaps
set_key("i", "kk", "<Esc>")
set_key("n", "<Esc>", "<cmd>nohlsearch<CR>")

set_key("i", "<C-t>", "`")

-- some pairing symbols remaps
set_key("i", "{}", "{}")
set_key("i", "[]", "[]")
set_key("i", "()", "()")
set_key("i", '""', '""')

set_key("i", "{{", "{")
set_key("i", "[[", "[")
set_key("i", "((", "(")

set_key("i", "{", "{}<Esc>ha")
set_key("i", "[", "[]<Esc>ha")
set_key("i", "(", "()<Esc>ha")
set_key("i", '"', '""<Esc>ha')

set_key("i", "{<CR>", "{<CR>}<Esc>k$a<CR>")
set_key("i", "[<CR>", "[<CR>]<Esc>k$a<CR>")
set_key("i", "(<CR>", "(<CR>)<Esc>k$a<CR>")

set_key("v", "(", "c()<Esc>hp")
set_key("v", "[", "c[]<Esc>hp")
set_key("v", "{", "c{}<Esc>hp")
set_key("v", '"', 'c""<Esc>hp')

-- some splits remaps
set_key("n", "<C-h>", "<C-w>h")
set_key("n", "<C-j>", "<C-w>j")
set_key("n", "<C-k>", "<C-w>k")
set_key("n", "<C-l>", "<C-w>l")

-- some leader remaps
set_key("n", "<leader>w", ":wa<CR>")
set_key("n", "<leader>q", ":qa!<CR>")

-- neotree remaps
set_key("n", "<C-m>", "<Cmd>Neotree toggle<CR>")

-- barbar remaps
set_key("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
set_key("n", "<A-l>", "<Cmd>BufferNext<CR>")
set_key("n", "<A-j>", "<Cmd>BufferMovePrevious<CR>")
set_key("n", "<A-k>", "<Cmd>BufferMoveNext<CR>")
set_key("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
set_key("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
set_key("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
set_key("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
set_key("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
set_key("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
set_key("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
set_key("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
set_key("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
set_key("n", "<A-0>", "<Cmd>BufferLast<CR>")
set_key("n", "<A-P>", "<Cmd>BufferPin<CR>")
set_key("n", "<A-q>", "<Cmd>BufferClose<CR>")
set_key("n", "<A-f>", "<Cmd>BufferPick<CR>")
set_key("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
set_key("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>")
set_key("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>")
set_key("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>")
set_key("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>")
