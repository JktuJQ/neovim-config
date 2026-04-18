local handlers = require("plugins.lsp.nvim-lspconfig.handlers")

local config = function()
    handlers.setup_diagnostics()

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
    config = config,
}
