local opts = {
    defaults = {
        file_ignore_patterns = { "node_modules", ".git" },
    }
}

local remap = function(remap)
    local builtin = require("telescope.builtin")
    remap("n", "<leader>tf", builtin.find_files)
    remap("n", "<leader>tw", builtin.live_grep)
end

local config = function()
    remap(require("remaps.init").remap)
end

return {
    opts = opts,
    config = config,
}
