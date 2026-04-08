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
        p = "enter_diffbuf",
        q = "quit",
    }
}

local remap = function(remap)
    remap("n", "<leader>u", "<Cmd>UndotreeToggle<CR>")
end

local config = function()
    require("undotree").setup(opts)
    remap(require("remaps.init").remap)
end

return {
    opts = opts,
    config = config,
}
