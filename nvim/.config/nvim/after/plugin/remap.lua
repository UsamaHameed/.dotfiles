local nnoremap = require("usama.keymap").nnoremap
local inoremap = require("usama.keymap").inoremap
local xnoremap = require("usama.keymap").xnoremap
local vnoremap = require("usama.keymap").vnoremap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>")
inoremap("<C-c>", "<Esc>")

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>u", ":UndotreeShow<CR>")

nnoremap("<leader>pf", function()
  require('telescope.builtin').find_files()
end)

nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)

nnoremap("<leader>ps", function()
  require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })
end)

nnoremap("<leader>vh", function()
  require('telescope.help_tags').help_tags()
end)

--nnoremap("<leader>gm", function()
--    require('telescope').extensions.git_worktree.create_git_worktree()
--end)

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

