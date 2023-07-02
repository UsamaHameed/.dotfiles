vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)

