local nnoremap = require("usama.keymap").nnoremap
local inoremap = require("usama.keymap").inoremap
local xnoremap = require("usama.keymap").xnoremap
local vnoremap = require("usama.keymap").vnoremap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>")
inoremap("<C-c>", "<Esc>")

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>u", ":UndotreeShow<CR>")

nnoremap("<leader>f", function()
  vim.lsp.buf.format()
end)

nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

nnoremap("<leader>o", "o<Esc>")
nnoremap("<leader>O", "O<Esc>")

vnoremap("<leader>y",  "\"+y")
nnoremap("<leader>Y",  "+yg_")
nnoremap("<leader>y",  "+y")
nnoremap("<leader>yy",  "+yy")

nnoremap("<leader>p", "+p")
nnoremap("<leader>P", "+P")
vnoremap("<leader>p", "+p")
vnoremap("<leader>P", "+P")

