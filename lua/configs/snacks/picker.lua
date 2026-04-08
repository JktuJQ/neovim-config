local remap = function(remap)
    remap("n", "<leader>ff", function() Snacks.picker.files() end)
    remap("n", "<leader>fg", function() Snacks.picker.grep() end)
    remap("n", "<leader>fb", function() Snacks.picker.buffers() end)
    remap("n", "<leader>fr", function() Snacks.picker.recent() end)
    remap("n", "<leader>fk", function() Snacks.picker.keymaps() end)
    remap("n", "<leader>fl", function() Snacks.picker.lines() end)
    remap("n", "<leader>fw", function() Snacks.picker.grep_word() end)
end

remap(require("remaps.init").remap)

return {
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
