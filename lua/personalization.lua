--[[
    personalization.lua handles colorschemes, fonts and etc.
]]--

require("..//tokyodark").setup({
    styles = {
        comments = { italic = (vim.fn.has("gui_running") and true or false) },
        keywords = { italic = false },
        identifiers = { italic = (vim.fn.has("gui_running") and true or false) },
        functions = {},
        variables = {},
    },
})
vim.cmd("colorscheme tokyodark")

