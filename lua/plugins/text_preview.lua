return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "OXY2DEV/markview.nvim" },
        lazy = false,
        config = function()
            local remap = require("remaps")
            remap("n", "<leader>p", "<Cmd>Markview Toggle")
        end
    } 
}
