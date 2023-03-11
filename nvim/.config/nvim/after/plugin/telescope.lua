local telescope = require('telescope');
local builtin = telescope.builtin;

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gm', telescope.extensions.git_worktree.create_git_worktree, {})
vim.keymap.set('n', '<leader>gd', builtin.diagnostics, {})

