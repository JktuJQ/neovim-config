return {
    {
        "OXY2DEV/markview.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },

        lazy = false,

        opts = function()
            return require("configs.markview").opts
        end,

        config = require("configs.markview").config,
    }
}
