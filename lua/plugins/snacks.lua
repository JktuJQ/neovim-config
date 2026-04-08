local config = function()
    require("snacks").setup({
        dashboard = require("plugins.snacks.dashboard").opts,
        quickfile = require("plugins.snacks.quickfile").opts,
        picker = require("plugins.snacks.picker").opts,
        explorer = require("plugins.snacks.explorer").opts,
    })

    require("plugins.snacks.picker").config()
    require("plugins.snacks.explorer").config()
end

return {
    "folke/snacks.nvim",

    lazy = false,
    priority = 10000,

    config = config,
}
