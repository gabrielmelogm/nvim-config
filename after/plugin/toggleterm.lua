local toggleterm = require("toggleterm")
local wk = require('which-key')

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
	shell = "pwsh",
	float_opts = {
		border = "curved",
		width = 80,
		height = 20,
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

wk.register({
	t = {
		name = "Terminal",
		t = {
			"<cmd>ToggleTerm<cr>", "Toggle Terminal",
		},
		v = {
			"<cmd>ToggleTerm direction=vertical size=60<cr>", "Toggle Terminal Vertical",
		},
	}
}, { prefix = "<space>" })
