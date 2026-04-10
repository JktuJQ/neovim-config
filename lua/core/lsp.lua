local get_clients = function(bufnr)
    bufnr = bufnr or 0
    return vim.lsp.get_clients({ bufnr = bufnr })
end

local is_attached = function(bufnr)
    bufnr = bufnr or 0
    return #get_clients(bufnr) > 0
end

local restart = function(bufnr)
    bufnr = bufnr or 0
    for _, client in ipairs(get_clients(bufnr)) do
        client.stop()
    end
    vim.cmd("e")
end

return {
    get_clients = get_clients,
    is_attached = is_attached,
    restart = restart,
}
