local remap = function()
    Snacks.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)
    Snacks.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end)
    Snacks.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end)
    Snacks.keymap.set("n", "<leader>fr", function() Snacks.picker.recent() end)
    Snacks.keymap.set("n", "<leader>fk", function() Snacks.picker.keymaps() end)
    Snacks.keymap.set("n", "<leader>fl", function() Snacks.picker.lines() end)
    Snacks.keymap.set("n", "<leader>fw", function() Snacks.picker.grep_word() end)
end

local opts = {
    enabled = true,
    layout = {
        preset = "default",
    },
    sources = {
        files = {
            hidden = false,
            ignored = true,
        },
        grep = {
            hidden = false,
            ignored = true,
        },
        explorer = {
            hidden = false,
            ignored = true,
        },
    },
}

local config = function()
    remap()
end

return {
    opts = opts,
    config = config,
}
