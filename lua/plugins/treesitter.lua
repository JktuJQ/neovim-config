local opts = {
    ensure_installed = { "lua" },
    auto_install = true,
    highlight = {
        enable = true,
    }
}

return {
    {
        "nvim-treesitter/nvim-treesitter",

        build = ":TSUpdate",

        opts = opts
    },
}
