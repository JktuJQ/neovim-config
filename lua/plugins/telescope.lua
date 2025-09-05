local remap = require("remaps")

return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        init = function()
            local builtin = require("telescope.builtin")
            remap("n", "<leader>f", builtin.find_files)
            remap("n", "<leader>w", builtin.live_grep)
        end
    }
}
