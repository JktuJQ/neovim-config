local opts = {
    styles = {
        comments = { italic = (vim.fn.has("gui_running") and true or false) },
        keywords = { italic = false },
        identifiers = { italic = (vim.fn.has("gui_running") and true or false) },
        functions = {},
        variables = {},
    }
}

local config = function()
    vim.cmd("colorscheme duskfox")
end

return {
    opts = opts,
    config = config,
}
