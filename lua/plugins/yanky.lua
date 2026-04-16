local opts = {
    highlight = { timer = 0 },
    system_clipboard = {
        sync_with_ring = not vim.env.SSH_CONNECTION,
    },
    ring = {
        storage = "sqlite",
    },
}

local keys = {
    {
        "<leader>y",
        function() Snacks.picker.yanky() end,
        mode = "n",
        desc = "Open yank history (Snacks picker)"
    },
    {
        "y",
        "<Plug>(YankyYank)",
        mode = "n",
        desc = "Yank text"
    },
    {
        "p",
        "<Plug>(YankyPutAfter)",
        mode = "n",
        desc = "Put after cursor"
    },
    {
        "P",
        "<Plug>(YankyPutBefore)",
        mode = "n",
        desc = "Put before cursor"
    },
    {
        "<C-p>",
        "<Plug>(YankyPreviousEntry)",
        mode = "n",
        desc = "Previous yank entry"
    },
    {
        "<C-n>",
        "<Plug>(YankyNextEntry)",
        mode = "n",
        desc = "Next yank entry"
    },
}

return {
    "gbprod/yanky.nvim",
    dependencies = {
        "kkharji/sqlite.lua",
        "folke/snacks.nvim",
    },

    opts = opts,
    keys = keys,
}
