local lua_ls = {
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = {
                globals = { "vim" },
                disable = { "undefined-global" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
                maxPreload = 100000,
                preloadFileSize = 1000,
            },
            telemetry = { enable = false },
            format = { enable = true },
            hint = { enable = true },
        },
    },
}

local pyright = {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "basic",
                indexing = true,
            },
        },
    },
}

local clangd = {
    capabilities = {
        offsetEncoding = "utf-8",
    },
    settings = {
        clangd = {
            inlayHints = {
                enabled = true,
                parameterNames = true,
                deducedTypes = true,
            },
        },
    },
}

local rust_analyzer = {
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                loadOutDirsFromCheck = true,
            },
            procMacro = { enable = true },
            checkOnSave = true,
            diagnostics = {
                enable = true,
            },
            inlayHints = {
                bindingModeHints = true,
                closureReturnTypeHints = true,
                lifetimeElisionHints = "always",
                parameterHints = true,
                reborrowHints = "always",
            },
        },
    },
}

return {
    lua_ls = lua_ls,
    pyright = pyright,
    clangd = clangd,
    rust_analyzer = rust_analyzer,
}
