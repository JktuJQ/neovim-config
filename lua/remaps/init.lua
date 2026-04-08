local M = {}

function M.remap(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", opts, options)
    end
    if type(rhs) == "function" then
        vim.keymap.set(mode, lhs, rhs, options)
    else
        vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
end

return M
