return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            {
                "windwp/nvim-autopairs",
                config = function()
                    local autopairs = require("nvim-autopairs")
                    autopairs.setup({
                        check_ts = true,
                        disable_filetype = { "TelescopePrompt" }
                    })
                    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
                    local cmp = require("cmp")
                    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
                end
            }
        },

        event = { "InsertEnter", "CmdlineEnter" },

        opts = function()
            return require("configs.autocomplete").opts
        end,

        config = require("configs.autocomplete").config,
    }
}
