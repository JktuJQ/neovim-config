local mason_opts = {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}

local mason_lspconfig_opts = {
    ensure_installed = {
        "lua_ls",
    },
}

local lspconfig_opts = {
    servers = {
        lua_ls = {
            settings = {
                Lua = {
                    runtime = { version = "LuaJIT" },
                    diagnostics = { globals = { "vim" } },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                    telemetry = { enable = false }
                }
            }
        },
        pyright = {
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
        },
        rust_analyzer = {
            settings = {
                ["rust-analyzer"] = {
                    procMacro = { enable = true },
                },
            },
        },
        hls = {
            settings = {
                haskell = {
                    formattingProvider = "ormolu",
                    plugin = {
                        alternateNumberFormat = { globalOn = true }
                    }
                }
            }
        }
    }
}

local mason_config = function(_, opts)
    require("mason").setup(opts)
end

local mason_lspconfig_config = function(_, opts)
    require("mason-lspconfig").setup(opts)
end

local lspconfig_config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local opts = { noremap = true, silent = true }

    for server, server_opts in pairs(lspconfig_opts.servers) do
        server_opts.capabilities = capabilities
        require("lspconfig")[server].setup(server_opts)
    end

    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            Snacks.keymap.set("n", "H", function() vim.lsp.buf.hover() end, opts)
            Snacks.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
            Snacks.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            Snacks.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)
            Snacks.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
            Snacks.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            Snacks.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)

            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true
            })
        end,
    })
end

return {
    {
        "williamboman/mason.nvim",

        opts = mason_opts,
        config = mason_config,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        opts = mason_lspconfig_opts,
        config = mason_lspconfig_config,
    },
    {
        "neovim/nvim-lspconfig",
        version = "1.0.0",

        opts = lspconfig_opts,
        config = lspconfig_config,
    },
}
