-- lazy.nvim initialization
require("plugins//nvim-lazy")

-- remaps and sets
require("remaps")
require("sets")

-- personalization and appearance
require("personalization")
require("editor_appearance")

-- other plugins
require("plugins//nvim-mason")
local lspconfig = require("..//lspconfig")
lspconfig.lua_ls.setup({}) -- lua

-- rust
lspconfig.rust_analyzer.setup({})
require("languages//rust")

-- haskell
--lspconfig.hls.setup({}) -- commented because of usage of haskell-tools
require("languages//haskell")

-- nvim-qt gui
require("gui")

