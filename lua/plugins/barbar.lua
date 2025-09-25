return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() 
            vim.g.barbar_auto_setup = true
            
            local remap = require("remaps")
            remap("n", "<A-h>", "<Cmd>BufferPrevious<CR>")
            remap("n", "<A-l>", "<Cmd>BufferNext<CR>")
            remap("n", "<A-j>", "<Cmd>BufferMovePrevious<CR>")
            remap("n", "<A-k>", "<Cmd>BufferMoveNext<CR>")
            remap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
            remap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
            remap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
            remap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
            remap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
            remap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
            remap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
            remap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
            remap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
            remap("n", "<A-0>", "<Cmd>BufferLast<CR>")
            remap("n", "<A-P>", "<Cmd>BufferPin<CR>")
            remap("n", "<A-q>", "<Cmd>BufferClose<CR>")
            remap("n", "<A-f>", "<Cmd>BufferPick<CR>")
            remap("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
            remap("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>")
            remap("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>")
            remap("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>")
            remap("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>")
        end,

        version = "^1.0.0",
    },
}
