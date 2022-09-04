local nnoremap = require("usama.keymap").nnoremap
local inoremap = require("usama.keymap").inoremap
local xnoremap = require("usama.keymap").xnoremap

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
