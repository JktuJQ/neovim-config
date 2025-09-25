return {
    {
        "williamboman/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }

            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = { automatic_installation = false },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "hls"
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        version = "1.0.0",
        init = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local remap = require("remaps")
                    local opts = { buffer = args.buf }
                    remap("n", "H", vim.lsp.buf.hover, opts)
                    remap("n", "gD", vim.lsp.buf.declaration, opts)
                    remap("n", "gd", vim.lsp.buf.definition, opts)
                    remap("n", "gt", vim.lsp.buf.type_definition, opts)
                    remap("n", "gi", vim.lsp.buf.implementation, opts)
                    remap("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    remap("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)

                    vim.diagnostic.config({
                        virtual_text = true,
                        signs = true,
                        underline = true,
                        update_in_insert = false,
                        severity_sort = true
                    })
                end,
            })
        end,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" }},
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = { enable = false }
                    }
                }
            })
            lspconfig.pyright.setup({
                settings = {
                    pyright = {
                        autoImportCompletion = true,
                    },
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "workspace",
                            useLibraryCodeForTypes = true,
                            typeCheckingMode = "basic",
                        }
                    }
                }
            })
            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        procMacro = { enable = true },
                    },
                },
            })
            lspconfig.hls.setup({
                capabilities = capabilities,
                settings = {
                    haskell = {
                        formattingProvider = "ormolu",
                        plugin = {
                            alternateNumberFormat = { globalOn = true }
                        }
                    }
                }
            })
        end
    },
}
