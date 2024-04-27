--[[
    gui.lua handles several GUI quirks that are needed for correct work of nvim-qt.
]]--

if vim.fn.has("gui_running") then -- do whatever needed for nvim-qt
    vim.opt.guifont = "JetBrainsMono NFM:h16" -- manually setting font
end
