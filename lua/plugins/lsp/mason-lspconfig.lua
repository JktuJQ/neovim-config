local opts = {
    ensure_installed = {
        "lua_ls",
        -- "pyright",
        -- "clangd",
        -- "rust_analyzer",
        -- "hls",
    },
    automatic_installation = true,
}

local config = function()
    require("mason-lspconfig").setup(opts)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local has_blink, blink = pcall(require, "blink.cmp")
    if has_blink then
        capabilities = blink.get_lsp_capabilities(capabilities)
    end

    local handlers = require("plugins.lsp.nvim-lspconfig.handlers")

    local servers = require("plugins.lsp.nvim-lspconfig.servers")
    for server_name, server_config in pairs(servers) do
        vim.lsp.config(server_name, {
            capabilities = capabilities,
            on_attach = handlers.on_attach,
            settings = server_config.settings or {},
        })
    end

    vim.lsp.enable(vim.tbl_keys(servers))
end

return {
    opts = opts,
    config = config,
}
