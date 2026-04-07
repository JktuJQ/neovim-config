return {
    "folke/snacks.nvim",
    opts = function()
        return require("configs.snacks").opts
    end,

    lazy = false,
    priority = 1000,
}
