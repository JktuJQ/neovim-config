return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        opts = function()
            return require("configs.barbar").opts
        end,

        config = require("configs.barbar").config,
    },
}
