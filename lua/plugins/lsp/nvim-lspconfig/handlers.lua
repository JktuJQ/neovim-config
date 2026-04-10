local diagnostic_config = {
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
    },
}

local keymaps = {
    { "n", "gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
    { "n", "gd", vim.lsp.buf.definition, desc = "Go to definition" },
    { "n", "H", vim.lsp.buf.hover, desc = "Hover documentation" },
    { "n", "gi", vim.lsp.buf.implementation, desc = "Go to implementation" },
    { "n", "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol" },
    { "n", "<leader>ca", vim.lsp.buf.code_action, desc = "Code action" },
    { "n", "gu", vim.lsp.buf.references, desc = "Find references" },
    { "n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, desc = "Format document" },
}

local augroup = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, noremap = true, silent = true }

    for _, km in ipairs(keymaps) do
        local mode, key, func, desc = unpack(km)
        Snacks.keymap.set(mode, key, func, opts, { desc = desc })
    end

    if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end
end

local setup_diagnostics = function()
    vim.diagnostic.config(diagnostic_config)
end

return {
    augroup = augroup,
    on_attach = on_attach,
    setup_diagnostics = setup_diagnostics,
}
