local opts = {
    cut_key = nil,
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
