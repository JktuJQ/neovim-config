local opts = {
	enabled = true,
	replace_netrw = false,
	trash = false,
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

local keys = {
	{
		"<C-m>",
		function()
			Snacks.explorer()
		end,
		mode = "n",
		desc = "Toggle explorer",
	},
}

return {
	opts = opts,
	keys = keys,
}
