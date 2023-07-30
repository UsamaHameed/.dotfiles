require("usama.set")
require("usama.remap")

local augroup = vim.api.nvim_create_augroup
local UsamaGroup = augroup('Usama', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

-- fix for netrw not working with gx in gnome-terminal on linux
vim.cmd([[
    :let g:netrw_browsex_viewer= "xdg-open"
]])

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = UsamaGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
