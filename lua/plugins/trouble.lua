local remap = function()
    Snacks.keymap.set("n", "<leader>t", function()
        local has_trouble, trouble = pcall(require, "trouble")
        if has_trouble then
            trouble.toggle("diagnostics")
        else
            vim.diagnostic.open_float()
        end
    end, { desc = "Toggle diagnostics" })
end

local keys = {
    {
        "<leader>tl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references (Trouble)",
    },
    {
        "<leader>tq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
    },
}

local opts = {
    position = "bottom",
    height = 10,
    width = 50,
    icons = true,
    mode = "diagnostics",
    severity = vim.diagnostic.severity.WARN,
    group = true,
    padding = true,
    cycle_results = true,
    action_keys = {
        close = "q",
        cancel = "<esc>",
        refresh = "r",
        jump = { "<cr>", "<tab>" },
        jump_close = { "o" },
        toggle_mode = "m",
        toggle_preview = "P",
        hover = "H",
        preview = "p",
        open_code = "<c-space>",
        open_help = "h",
    },
    indent_lines = true,
    auto_open = false,
    auto_close = true,
    auto_preview = true,
    auto_fold = false,
    signs = {
        error = "error",
        warning = "warn",
        hint = "hint",
        information = "info",
    },
    use_diagnostic_signs = true,
}

local config = function()
    remap()
end

return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    cmd = "Trouble",

    keys = keys,
    opts = opts,
    config = config,
}
