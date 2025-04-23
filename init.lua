-- lazy.nvim initialization
require("nvim-lazy")

-- remaps and sets
require("remaps")
require("sets")

vim.api.nvim_create_autocmd("VimEnter", {
    command = "Neotree toggle",
})
