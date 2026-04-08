local remap = function()
    Snacks.keymap.set("n", "<leader>ut", "<Cmd>lua require('undotree').toggle()<CR>")
end

local opts = {
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
        d = "enter_diffbuf",
        q = "quit",
    }
}

local config = function()
    require("undotree").setup(opts)
    remap()
end

return {
    {
        "jiaoshijie/undotree",

        opts = opts,
        config = config,
    }
}
