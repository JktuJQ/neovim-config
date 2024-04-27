--[[
    rust.lua manages Rust-related toolbox.
]]--

local rust = require("rust-tools")
rust.setup({
    server = {
      on_attach = function(client, bufnr)
          client.server_capabilities.semanticTokensProvider = nil
        vim.keymap.set("n", "<C-space>", rust.hover_actions.hover_actions, { buffer = bufnr })
        vim.keymap.set("n", "<Leader>a", rust.code_action_group.code_action_group, { buffer = bufnr })
      end,
    },
})
