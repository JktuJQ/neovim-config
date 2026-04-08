return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },

        opts = function()
            return require("configs.telescope").opts
        end,

        config = require("configs.telescope").config,
    }
}
