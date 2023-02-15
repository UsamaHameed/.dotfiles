local nnoremap = require("usama.keymap").nnoremap

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

nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)

nnoremap("<leader>gd", function()
    require('telescope.builtin').diagnostics()
end)
