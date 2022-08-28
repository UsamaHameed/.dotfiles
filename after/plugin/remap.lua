local nnoremap = require("usama.keymap").nnoremap
local inoremap = require("usama.keymap").inoremap
local xnoremap = require("usama.keymap").xnoremap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>")
inoremap("<C-c>", "<Esc>")

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>u", ":UndotreeShow<CR>")

-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

nnoremap("<leader>pf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<C-p>", function ()
   require('telescope.builtin').git_files()
end)

nnoremap("<leader>ps", function ()
  require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})
end)
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
