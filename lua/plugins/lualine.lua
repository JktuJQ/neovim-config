return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },

        opts = function()
            return require("configs.lualine").opts
        end,
    },
}
