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

local keys = {
    {
        "<C-t>",
        function() Snacks.terminal() end,
        mode = {"n", "t"},
        desc = "Toggle terminal"
    },
}

return {
    opts = opts,
}
