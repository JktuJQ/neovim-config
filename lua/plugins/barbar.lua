local remap = function()
    Snacks.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
    Snacks.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
    Snacks.keymap.set("n", "<A-j>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move previous buffer" })
    Snacks.keymap.set("n", "<A-k>", "<Cmd>BufferMoveNext<CR>", { desc = "Move next buffer" })
    Snacks.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { desc = "Buffer #1" })
    Snacks.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { desc = "Buffer #2" })
    Snacks.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { desc = "Buffer #3" })
    Snacks.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { desc = "Buffer #4" })
    Snacks.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { desc = "Buffer #5" })
    Snacks.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { desc = "Buffer #6" })
    Snacks.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { desc = "Buffer #7" })
    Snacks.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { desc = "Buffer #8" })
    Snacks.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { desc = "Buffer #9" })
    Snacks.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", { desc = "Last buffer" })
    Snacks.keymap.set("n", "<A-q>", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
    Snacks.keymap.set("n", "<A-f>", "<Cmd>BufferPick<CR>", { desc = "Pick buffer" })
end

local opts = {}

local config = function()
    require("barbar").setup(opts)
    remap()
end

return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        opts = opts,
        config = config,
    },
}
