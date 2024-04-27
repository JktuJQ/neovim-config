--[[ 
    lazy.lua handles installation of all necessary plugins.
    It also installs lazy.nvim to nvim-data/lazy/lazy.nvim if it is not installed.
]]--

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- list of all plugins
local plugins = {
    -- customisation
    "tiagovla/tokyodark.nvim",

    -- editor appearance
    "nvim-tree/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "romgrk/barbar.nvim",
    "nvim-tree/nvim-tree.lua",

    -- highlighting and LSP
    "nvim-treesitter/nvim-treesitter",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- language tools
    "simrat39/rust-tools.nvim",
    "mrcjkb/haskell-tools.nvim",
}
require("../lazy").setup(plugins)

