local opts = { noremap=true, silent=true }
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

local function on_attach()
   vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
   vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
   vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })
   vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { buffer = 0 })
end

local languages = { }

return {
   {
      "neovim/nvim-lspconfig",
      version = "1.0.0",
      dependencies = { "hrsh7th/cmp-nvim-lsp" },
      config = function()
         local capabilities = require('cmp_nvim_lsp').default_capabilities()
         require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
               Lua = {
                  diagnostics = {
                     globals = {"vim"},
                  },
               },
            },
         })

         require("lspconfig").tailwindcss.setup({
            on_attach = function()
               require("tailwindcss-colors").buf_attach(0)
            end
         })

         for _, language in pairs(languages) do
                local lopts = {
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            local require_ok, settings = pcall(require, "plugins.lsp." .. language)
                if require_ok then
                  opts = vim.tbl_deep_extend("force", settings, opts)
                end
            require("lspconfig")[language].setup(lopts)

         end

         vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics, {
               virtual_text = false
            }
         )
      end
   },
   {
      "williamboman/mason.nvim",
      opts = {}
   },
   {
      "williamboman/mason-lspconfig.nvim",
      opts = {
         ensure_installed = { },
         automatic_installation = false,
      }
   },
}
