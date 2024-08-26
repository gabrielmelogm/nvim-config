local mappings = {
	e = { '<cmd>NvimTreeToggle<cr>', 'File Explorer' },
	q = { '<cmd>quit<cr>', 'Quit' },
	Q = { '<cmd>quitall<cr>', 'Exit' },
	w = { '<cmd>update<cr>', 'Save' },
	f = {
		name = 'Find',
		f = { '<cmd>Telescope find_files<cr>', 'Files' },
		w = { '<cmd>Telescope live_grep<cr>', 'Words' },
		k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
		h = { '<cmd>Telescope help_tags<cr>', 'Help Tags' },
		c = { '<cmd>Telescope commands<cr>', 'Commands' },
	},
	p = {
		name = 'Package manager',
		p = { '<cmd>Mason<cr>', 'Open Package Manager' },
		u = { '<cmd>MasonUpdate<cr>', 'Update Packages' },
		d = { '<cmd>MasonUninstallAll<cr>', 'Update All Packages' },
	},
	s = {
		name = 'Split',
		h = { '<cmd>split<cr>', 'Horizontal split' },
		v = { '<cmd>vsplit<cr>', 'Vertical split' },
	}
}

return mappings
