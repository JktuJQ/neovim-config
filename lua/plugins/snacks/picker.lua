local opts = {
	enabled = true,
	ui_select = true,
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
		function()
			Snacks.picker.files()
		end,
		mode = "n",
		desc = "Find files",
	},
	{
		"<leader>fg",
		function()
			Snacks.picker.grep()
		end,
		mode = "n",
		desc = "Find by grepping",
	},
	{
		"<leader>fb",
		function()
			Snacks.picker.buffers()
		end,
		mode = "n",
		desc = "Find buffers",
	},
	{
		"<leader>fr",
		function()
			Snacks.picker.recent()
		end,
		mode = "n",
		desc = "Find recent",
	},
	{
		"<leader>fk",
		function()
			Snacks.picker.keymaps()
		end,
		mode = "n",
		desc = "Find keymaps",
	},
	{
		"<leader>fl",
		function()
			Snacks.picker.lines()
		end,
		mode = "n",
		desc = "Find lines",
	},
	{
		"<leader>fw",
		function()
			Snacks.picker.grep_word()
		end,
		mode = "n",
		desc = "Find word",
	},

	{
		"<leader>fD",
		function()
			Snacks.picker.lsp_declarations()
		end,
		mode = "n",
		desc = "Find declarations",
	},
	{
		"<leader>fd",
		function()
			Snacks.picker.lsp_definitions()
		end,
		mode = "n",
		desc = "Find definitions",
	},
	{
		"<leader>fi",
		function()
			Snacks.picker.lsp_implementations()
		end,
		mode = "n",
		desc = "Find implementations",
	},
	{
		"<leader>fu",
		function()
			Snacks.picker.lsp_references()
		end,
		mode = "n",
		desc = "Find references",
	},
	{
		"<leader>fs",
		function()
			Snacks.picker.lsp_symbols()
		end,
		mode = "n",
		desc = "Find document symbols",
	},
	{
		"<leader>fS",
		function()
			Snacks.picker.lsp_workspace_symbols()
		end,
		mode = "n",
		desc = "Find workspace symbols",
	},
}
return {
	opts = opts,
	keys = keys,
}
