--[[
    reset_keys.lua sets all key remaps that are needed.
]]--

-- handy set_key function
local function set_key(mode, lhs, rhs)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend("force", options)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- leader key
vim.g.set_keyleader = "l"

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

set_key("i", "kk", "<Esc>") -- nice idea since on my 60% keyboard there is no ~ symbol (had to rebind Esc to it)

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

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

-- some splits remaps
set_key("n", "<leader>tk", "<C-w>t<C-w>K")
set_key("n", "<leader>th", "<C-w>t<C-w>H")

set_key("n", "<C-h>", "<C-w>h")
set_key("n", "<C-j>", "<C-w>j")
set_key("n", "<C-k>", "<C-w>k")
set_key("n", "<C-l>", "<C-w>l")

-- some leader remaps
set_key("n", "<leader>r", ":so %<CR>")
set_key("n", "<leader>s", ":w<CR>")
set_key("n", "<leader>q", ":qa!<CR>")

-- neotree remaps
set_key("n", "<C-n>", "<Cmd>Neotree toggle<CR>")

-- barbar remaps
set_key("n", "<A-,>", "<Cmd>BufferPrevious<CR>")
set_key("n", "<A-.>", "<Cmd>BufferNext<CR>")
set_key("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>")
set_key("n", "<A->>", "<Cmd>BufferMoveNext<CR>")
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
set_key("n", "<A-p>", "<Cmd>BufferPin<CR>")
set_key("n", "<A-c>", "<Cmd>BufferClose<CR>")
set_key("n", "<C-p>", "<Cmd>BufferPick<CR>")
set_key("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
set_key("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>")
set_key("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
set_key("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
set_key("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")



