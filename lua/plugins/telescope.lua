return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
	        local remap = require("remaps")
            local builtin = require("telescope.builtin")
            remap("n", "<leader>tf", builtin.find_files)
            remap("n", "<leader>tw", builtin.live_grep)
        end
    }
}
