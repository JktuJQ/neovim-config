local opts = {
    options = {
        theme = "duskfox",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
            "encoding",
            "fileformat",
            "filetype",
            {
                "lsp_status",
                function()
                    local clients = vim.lsp.get_clients()
                    if #clients == 0 then
                        return "LSP: ✗"
                    end
                    local names = {}
                    for _, client in ipairs(clients) do
                        table.insert(names, client.name)
                    end
                    return "LSP: " .. table.concat(names, ", ")
                end,
                icon = "󰅂 ",
            },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },

        opts = opts,
    },
}
