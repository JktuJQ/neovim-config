return {
    "EdenEast/nightfox.nvim",
    styles = {
        comments = { italic = (vim.fn.has("gui_running") and true or false) },
        keywords = { italic = false },
        identifiers = { italic = (vim.fn.has("gui_running") and true or false) },
        functions = {},
        variables = {},
    },
    config = function() vim.cmd("colorscheme duskfox") end
}
