local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Clean input search
map('n', '<C-l>', 'let @/ = ""<CR>:nohlsearch<CR>', opts)

