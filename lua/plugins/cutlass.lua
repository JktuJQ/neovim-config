local opts = {
    cut_key = "c",
    override_del = false,
    exclude = {},
    registers = {
        select = "_",
        delete = "_",
        change = "_",
    },
}

local config = function()
    require("cutlass").setup(opts)
end

return {
    "gbprod/cutlass.nvim",

    opts = opts,
    config = config,
}
