-- lazy.nvim initialization
require("nvim-lazy")

-- remaps and sets
require("remaps")
require("sets")

-- lsp
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" },
})

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
    settings = {
    	["rust-analyzer"] = {
      	    procMacro = { enable = true },
        },
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set("n", "H", vim.lsp.buf.hover, { buffer = args.buf })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf })
    end,
})

-- open neotree
vim.api.nvim_create_autocmd("VimEnter", {
    command = "Neotree toggle",
})
