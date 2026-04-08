return {
    "folke/snacks.nvim",

    lazy = false,
    priority = 1000,

    opts = function()
        return require("configs.snacks").opts
    end,
}
