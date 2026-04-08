local opts = {}

local remap = function(remap)
    remap("n", "<leader>p", "<Cmd>Markview toggle<CR>")
end

local config = function()
    remap(require("remaps.init").remap)
end

return {
    opts = opts,
    config = config,
}
