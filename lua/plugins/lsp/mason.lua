local opts = {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
        border = "rounded",
    },
    max_concurrent_installers = 4,
}

local config = function()
    require("mason").setup(opts)
end

local keys = {}

return {
    opts = opts,
    config = config,
    keys = keys,
}
