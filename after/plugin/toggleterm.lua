local toggleterm = require("toggleterm")
local wk = require("which-key")

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-t>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "curved",
		width = 120,
		height = 40,
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

wk.add({
	{ "<Space>t", group = "Terminal" },
	{ "<Space>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
	{ "<Space>tv", "<cmd>ToggleTerm direction=vertical size=60<cr>", desc = "Toggle Terminal Vertical" },
}, {
	mode = { "n" },
})
