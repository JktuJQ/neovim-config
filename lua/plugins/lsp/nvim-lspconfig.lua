local augroup = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

local on_attach = function(client, bufnr)
    if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end
end

local config = function()
    vim.diagnostic.config({
        virtual_text = {
            prefix = "●",
            spacing = 4,
            source = true,
        },
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = "󰅚 ",
                [vim.diagnostic.severity.WARN] = "󰀪 ",
                [vim.diagnostic.severity.INFO] = "󰋽 ",
                [vim.diagnostic.severity.HINT] = "󰌶 ",
            },
        },
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
            border = "rounded",
            source = true,
        }
    })

    vim.api.nvim_create_autocmd("LspAttach", {
        group = augroup,
        callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client then
                on_attach(client, args.buf)
            end
        end,
    })
end

local keys = {
    { "<leader>li", function() vim.cmd("LspInfo") end, mode = "n", desc = "LSP Info" },
    { "<leader>lr", function() vim.cmd("LspRestart") end, mode = "n", desc = "Restart LSP" },
    { "<leader>le", function() vim.diagnostic.open_float() end, mode = "n", desc = "Show line diagnostics" },
    { "gD", vim.lsp.buf.declaration, mode = "n", desc = "Go to declaration" },
    { "gd", vim.lsp.buf.definition, mode = "n", desc = "Go to definition" },
    { "H", vim.lsp.buf.hover, mode = "n", desc = "Hover documentation" },
    { "gi", vim.lsp.buf.implementation, mode = "n", desc = "Go to implementation" },
    { "<leader>rn", vim.lsp.buf.rename, mode = "n", desc = "Rename symbol" },
    { "<leader>ca", vim.lsp.buf.code_action, mode = "n", desc = "Code action" },
    { "gu", vim.lsp.buf.references, mode = "n", desc = "Find references" },
    { "<leader>f", function() vim.lsp.buf.format({ async = true }) end, mode = "n", desc = "Format document" },
}

return {
    config = config,
    keys = keys,
}
