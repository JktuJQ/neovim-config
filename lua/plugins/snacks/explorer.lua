local remap = function()
    Snacks.keymap.set("n", "<C-m>", function() Snacks.explorer() end, { desc = "Toggle explorer"})
end

local opts = {
    enabled = true,
    replace_netrw = true,
    trash = true,
    git = {
        enabled = true,
        show_untracked = true,
    },
    icons = {
        show = true,
    },
    win = {
        style = "sidebar",
        position = "left",
        width = 30,
        border = "none",
        focus = false,
    },
}

local config = function()
    remap()
end

return {
    opts = opts,
    config = config,
}
