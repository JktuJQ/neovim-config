local remap = function(remap)
    remap("n", "<C-m>", function() Snacks.explorer() end)
end

remap(require("remaps.init").remap)

return {
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
