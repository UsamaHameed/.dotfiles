local nnoremap = require("usama.keymap").nnoremap
local inoremap = require("usama.keymap").inoremap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>")
inoremap("<C-c>", "<Esc>")
