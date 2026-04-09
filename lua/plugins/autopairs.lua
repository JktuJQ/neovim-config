local opts = {
    check_ts = true,
    disable_filetype = { "TelescopePrompt" },
}

return {
    "windwp/nvim-autopairs",

    event = "InsertEnter",

    opts = opts,
}
