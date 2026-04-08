return {
    {
        "nvim-treesitter/nvim-treesitter",

        build = ":TSUpdate",

        opts = function()
            return require("configs.treesitter").opts
        end,
    },
}
