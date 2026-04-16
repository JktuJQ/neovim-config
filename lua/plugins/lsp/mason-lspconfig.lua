local opts = {
    ensure_installed = {
        "lua_ls",
        --"pyright",
        --"clangd",
        --"rust_analyzer",
        --"hls",
    },
    automatic_installation = true,
}

local config = function()
    require("mason-lspconfig").setup(opts)
end

local keys = {}

return {
    opts = opts,
    config = config,
    keys = keys,
}
