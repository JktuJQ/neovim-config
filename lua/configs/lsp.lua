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
    local remap = require("remaps.init").remap
    local opts = { noremap = true, silent = true }

    for server, server_opts in pairs(lspconfig_opts.servers) do
        server_opts.capabilities = capabilities
        require("lspconfig")[server].setup(server_opts)
    end

    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
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
end

return {
    mason = {
        opts = mason_opts,
        config = mason_config,
    },
    mason_lspconfig = {
        opts = mason_lspconfig_opts,
        config = mason_lspconfig_config,
    },
    lspconfig = {
        opts = lspconfig_opts,
        config = lspconfig_config,
    },
}
