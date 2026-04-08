return {
    {
        "jiaoshijie/undotree",

        opts = function()
            return require("configs.undotree").opts
        end,

        config = require("configs.undotree").config,
    }
}
