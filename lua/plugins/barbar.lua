local remap = function()
    Snacks.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
    Snacks.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>")
    Snacks.keymap.set("n", "<A-j>", "<Cmd>BufferMovePrevious<CR>")
    Snacks.keymap.set("n", "<A-k>", "<Cmd>BufferMoveNext<CR>")
    Snacks.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
    Snacks.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
    Snacks.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
    Snacks.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
    Snacks.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
    Snacks.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
    Snacks.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
    Snacks.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
    Snacks.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
    Snacks.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>")
    Snacks.keymap.set("n", "<A-P>", "<Cmd>BufferPin<CR>")
    Snacks.keymap.set("n", "<A-q>", "<Cmd>BufferClose<CR>")
    Snacks.keymap.set("n", "<A-f>", "<Cmd>BufferPick<CR>")
    Snacks.keymap.set("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
    Snacks.keymap.set("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>")
    Snacks.keymap.set("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>")
    Snacks.keymap.set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>")
    Snacks.keymap.set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>")
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
