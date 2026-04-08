return {
    {
        "williamboman/mason.nvim",

        opts = function()
            return require("configs.lsp").mason.opts
        end,

        config = require("configs.lsp").mason.config,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        opts = function()
            return require("configs.lsp").mason_lspconfig.opts
        end,

        config = require("configs.lsp").mason_lspconfig.config,
    },
    {
        "neovim/nvim-lspconfig",
        version = "1.0.0",

        opts = function()
            return require("configs.lsp").lspconfig.opts
        end,

        config = require("configs.lsp").lspconfig.config,
    },
}
