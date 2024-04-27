--[[
    editor_appearance.lua manages all plugins that are directly configuring the editor.
]]--

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("..//nvim-tree").setup({
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 25,
    },
    renderer = {
      group_empty = true,
    },
})
vim.cmd("NvimTreeOpen")

-- lualine
require('lualine').setup()

-- barbar

