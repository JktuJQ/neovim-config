local mason = require("plugins.lsp.mason")
local mason_lspconfig = require("plugins.lsp.mason-lspconfig")
local nvim_lspconfig = require("plugins.lsp.nvim-lspconfig")

return {
    {
        "williamboman/mason.nvim",

        cmd = "Mason",
        build = ":MasonUpdate",

        opts = mason.opts,
        config = mason.config,
        keys = mason.keys,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },

        opts = mason_lspconfig.opts,
        config = mason_lspconfig.config,
        keys = mason_lspconfig.keys,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },

        opts = nvim_lspconfig.opts,
        config = nvim_lspconfig.config,
        keys = nvim_lspconfig.keys,
    },
}
