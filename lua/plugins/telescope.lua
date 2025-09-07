local remap = require("remaps")

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        init = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>tf", builtin.find_files)
            vim.keymap.set("n", "<leader>tw", builtin.live_grep)
        end
    }
}
