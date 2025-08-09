return {
   {
      "neovim/nvim-lspconfig",
      version = "1.0.0",
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
