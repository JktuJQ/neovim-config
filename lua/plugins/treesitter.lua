return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                ensure_installed = { 
                    "c",
                    "cpp",
                    "python",
                    "rust",
                    "haskell",
                    "html",
                    "css",
                    "javascript",
                    "lua",
                    "sql",
                    "vim",
                    "bash",
                    "comment"
                },
                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true },
            })
        end,
    },
}
