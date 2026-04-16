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

    local has_blink, blink = pcall(require, "blink.cmp")
    if has_blink then
        capabilities = blink.get_lsp_capabilities(capabilities)
    end

    for server_name, server_config in pairs(servers) do
        local final_config = vim.tbl_deep_extend("force", {
            capabilities = capabilities,
            on_attach = handlers.on_attach,
        }, server_config)

        vim.lsp.config(server_name, final_config)
    end

    vim.lsp.enable(vim.tbl_keys(servers))

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

local keys = {}

return {
    opts = opts,
    config = config,
    keys = keys,
}
