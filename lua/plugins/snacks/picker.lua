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

local keys = {
    {
        "<leader>ff",
        function() Snacks.picker.files() end,
        mode = "n",
        desc = "Find files"
    },
    {
        "<leader>fg",
        function() Snacks.picker.grep() end,
        mode = "n",
        desc = "Find by grepping"
    },
    {
        "<leader>fb",
        function() Snacks.picker.buffers() end,
        mode = "n",
        desc = "Find buffers"
    },
    {
        "<leader>fr",
        function() Snacks.picker.recent() end,
        mode = "n",
        desc = "Find recent"
    },
    {
        "<leader>fk",
        function() Snacks.picker.keymaps() end,
        mode = "n",
        desc = "Find keymaps"
    },
    {
        "<leader>fl",
        function() Snacks.picker.lines() end,
        mode = "n",
        desc = "Find lines"
    },
    {
        "<leader>fw",
        function() Snacks.picker.grep_word() end,
        mode = "n",
        desc = "Find word"
    },
}
return {
    opts = opts,
    keys = keys,
}
