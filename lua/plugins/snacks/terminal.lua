local opts = {
    enabled = true,
    win = {
        style = "terminal",
        position = "bottom",
        height = 0.3,
        border = "rounded",
        bo = {
            filetype = "snacks_terminal",
        },
    },
}

local remap = function()
    Snacks.keymap.set("n", "<C-t>", function() Snacks.terminal() end, { desc = "Toggle terminal" })
    Snacks.keymap.set("t", "<C-t>", function() Snacks.terminal() end, { desc = "Toggle terminal" })
end

local config = function()
    remap()
end

return {
    opts = opts,
    config = config,
}
