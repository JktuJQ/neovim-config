local git_status = function()
    local root = Snacks.git.get_root()
    local git_output = ""
    if root then
        local branch = vim.fn.system({ "git", "-C", root, "branch", "--show-current" }):gsub("\n", "")
        local diff = vim.fn.system({ "git", "-C", root, "--no-pager", "diff", "--stat", "-B", "-M", "-C" })
        if branch == "" and diff == "" then
            git_output = "Clean working directory"
        elseif branch ~= "" and diff ~= "" then
            git_output = "On branch: " .. branch .. "\n" .. diff
        elseif branch ~= "" then
            git_output = "On branch: " .. branch
        else
            git_output = diff
        end
    end
    return git_output
end

return {
    preset = {
        keys = {
            { icon = "󰉋 ", key = "m", desc = "File Explorer", action = ":Neotree toggle" },
            { icon = "󰒓 ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = "󰅚 ", key = "q", desc = "Quit", action = ":qa" },
        },
    },
    sections = {
        { section = "header" },
        {
            pane = 2,
            section = "terminal",
            cmd = "colorscript -e square",
            height = 5,
            padding = 1,
        },
        { section = "keys", gap = 1, padding = 1 },
        {
            pane = 2,
            icon = "󰈞 ",
            title = "Recent Files",
            section = "recent_files",
            limit = 6,
            indent = 2,
            padding = 1,
            action = function(item)
                vim.cmd.edit(item.file)
            end,
        },
        {
            pane = 2,
            icon = "󰉋 ",
            title = "Projects",
            section = "projects",
            limit = 4,
            indent = 2,
            padding = 1,
            action = function(item)
                vim.cmd.edit(item.file)
            end,
        },
        { pane = 2, gap = 5 },
        {
            pane = 2,
            icon = "󰊢 ",
            desc = "Browse Repo",
            padding = 1,
            key = "b",
            action = function()
                Snacks.gitbrowse()
            end,
        },
        {
            pane = 2,
            icon = " ",
            title = "Git Status\n",
            desc = git_status(),
            height = 10,
            padding = 1,
        },
        { section = "startup" },
    },
}
