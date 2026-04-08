local opts = {
    window = {
        position = "left",
        width = 30,
    }
}

local remap = function(remap)
    remap("n", "<C-m>", "<Cmd>Neotree toggle<CR>")
end

local config = function()
    require("neo-tree").setup(opts)
    remap(require("remaps.init").remap)
end

return {
    opts = opts,
    config = config,
}
