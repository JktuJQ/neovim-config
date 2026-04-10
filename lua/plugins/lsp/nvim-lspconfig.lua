local servers = require("plugins.lsp.nvim-lspconfig.servers")
local handlers = require("plugins.lsp.nvim-lspconfig.handlers")

local opts = {
    capabilities = nil,
    on_attach = handlers.on_attach,
    servers = servers,
}

local config = function()
    handlers.setup_diagnostics()

    local capabilities = vim.lsp.protocol.make_client_capabilities()

    for server_name, server_config in pairs(servers) do
        local cfg = vim.tbl_deep_extend("force", {
            capabilities = capabilities,
            on_attach = handlers.on_attach,
        }, server_config)

        require("lspconfig")[server_name].setup(cfg)
    end

    vim.api.nvim_create_autocmd("LspAttach", {
        group = handlers.augroup,
        callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client then
                handlers.on_attach(client, args.buf)
            end
        end,
    })
end

return {
    opts = opts,
    config = config,
}
