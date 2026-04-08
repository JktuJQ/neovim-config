return {
    "EdenEast/nightfox.nvim",

    opts = function()
        return require("configs.nightfox").opts
    end,

    config = require("configs.nightfox").config,
}
