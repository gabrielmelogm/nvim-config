local barbar = require("barbar")
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.barbar_auto_setup = false

map("n", "<C-u>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-i>", "<Cmd>BufferNext<CR>", opts)
map("n", "<C-S-c>", "<Cmd>BufferClose<CR>", opts)
map('n', '<C-h>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C-j>', '<Cmd>BufferMoveNext<CR>', opts)
map("n", "<C-w>", "<Cmd>BufferClose<CR>", opts)
map("n", "<C-p>", "<Cmd>BufferPin<CR>", opts)

barbar.setup({
	animations = true,
	tabpages = true,
	icons = {
		diagnostics = {
			[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
			[vim.diagnostic.severity.WARN] = { enabled = false },
			[vim.diagnostic.severity.INFO] = { enabled = false },
			[vim.diagnostic.severity.HINT] = { enabled = true },
		},
		gitsigns = {
			added = { enabled = true, icon = "+" },
			changed = { enabled = true, icon = "~" },
			deleted = { enabled = true, icon = "-" },
		},
		filetype = {
			custom_colors = false,
			enabled = true,
		},
		separator = { left = "▎", right = "" },
		separator_at_end = true,
		modified = { button = "●" },
		pinned = { button = "", filename = true },
		preset = "default",
		alternate = { filetype = { enabled = false } },
		current = { buffer_index = true },
		inactive = { button = "×" },
		visible = { modified = { buffer_number = false } },
	},
	minimum_padding = 1,
})
