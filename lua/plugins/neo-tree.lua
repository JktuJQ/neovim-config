local remap = require("remaps")

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        lazy = false,
        opts = {
            window = {
                position = "left",
                width = 30,
            },
        },

        init = function()
            remap("n", "<C-m>", "<Cmd>Neotree toggle<CR>")
        end
    }
}
