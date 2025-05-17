--[[
    'sets.lua' setups different settings of neovim.
]]--

-- appearance
vim.opt.termguicolors = true
vim.g.have_nerd_fonts = true

-- Lining
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- Tabs
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250

-- utils
vim.g.mapleader = " "

vim.opt.mouse = 'a'

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true

vim.opt.timeoutlen = 300
