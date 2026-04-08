return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },

        lazy = false,

        opts = function()
            return require("configs.neo-tree").opts
        end,

        config = require("configs.neo-tree").config,
    }
}
