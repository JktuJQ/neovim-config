return {
    {
        "jiaoshijie/undotree",
        opts = {},
        config = function()
            local undotree = require("undotree")

            undotree.setup({
                float_diff = true,
                layout = "left_bottom",
                position = "right",
                ignore_filetype = {
                    "undotree",
                    "undotreeDiff",
                    "qf",
                },
                window = {
                    winblend = 30,
                    border = "rounded",
                },
                keymaps = {
                    j = "move_next",
                    k = "move_prev",
                    gj = "move2parent",
                    J = "move_change_next",
                    K = "move_change_prev",
                    ["<cr>"] = "action_enter",
                    p = "enter_diffbuf",
                    q = "quit",
                },
            })

            local remap = require("remaps")
            remap("n", "<leader>u", undotree.toggle)
        end
    }
}
