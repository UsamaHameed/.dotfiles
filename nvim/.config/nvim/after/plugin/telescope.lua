local telescope = require("telescope")
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>')
vim.keymap.set('n', '<leader>fc', '<cmd>lua require("telescope.builtin").live_grep({ glob_pattern = "!{spec,test}"})<CR>')
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fi', '<cmd>AdvancedGitSearch<CR>')
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>gd', builtin.diagnostics, {})
-- vim.keymap.set('n', '<leader>gm', require('telescope').extensions.git_worktree.create_git_worktree, {})


local lga_actions = require("telescope-live-grep-args.actions")
local telescopeConfig = require("telescope.config")
-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

local actions = require("telescope.actions")
telescope.setup {
    defaults = {
        -- `hidden = true` is not supported in text grep commands.
        vimgrep_arguments = vimgrep_arguments,
        path_display = { "truncate" },
        mappings = {
            n = {
                ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
            i = {
                ["<C-j>"] = actions.cycle_history_next,
                ["<C-k>"] = actions.cycle_history_prev,

                ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
        },
    },
    pickers = {
        find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
    },
    extensions = {
        live_grep_args = {
            auto_quoting = true,
            mappings = {
                i = {
                    ["<C-k>"] = lga_actions.quote_prompt(),
                    ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                },
            },
        }
    }
}

require("telescope").load_extension("advanced_git_search")
require("telescope").load_extension("live_grep_args")
