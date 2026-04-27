local opts = {
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
		go = { "goimports", "gofmt" },
		rust = { "rustfmt", lsp_format = "fallback" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		sh = { "shfmt" },
		markdown = { "prettierd", "prettier" },
		json = { "prettierd", "prettier" },
		yaml = { "prettierd", "prettier" },
		["*"] = { "trim_whitespace" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	notify_on_error = true,
	formatters = {
		clang_format = {
			prepend_args = { "--style=file", "--fallback-style=LLVM" },
		},
		shfmt = {
			prepend_args = { "-i", "4" },
		},
	},
}

local config = function()
	require("conform").setup(opts)

	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*",
		callback = function(args)
			require("conform").format({ bufnr = args.buf, timeout_ms = 500, lsp_fallback = true })
		end,
	})
end

local keys = {
	{
		"<leader>cf",
		function()
			require("conform").format({ async = true, lsp_fallback = true })
		end,
		mode = "n",
		desc = "Format buffer",
	},
}

return {
	"stevearc/conform.nvim",

	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },

	opts = opts,
	config = config,
	keys = keys,
}
