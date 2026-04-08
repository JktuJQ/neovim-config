local remap = function()
    Snacks.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" })
    Snacks.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Find by grepping" })
    Snacks.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Find buffers" })
    Snacks.keymap.set("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Find recent" })
    Snacks.keymap.set("n", "<leader>fk", function() Snacks.picker.keymaps() end, { desc = "Find keymaps" })
    Snacks.keymap.set("n", "<leader>fl", function() Snacks.picker.lines() end, { desc = "Find lines" })
    Snacks.keymap.set("n", "<leader>fw", function() Snacks.picker.grep_word() end, { desc = "Find word" })
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
