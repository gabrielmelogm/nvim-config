local mappings = {
	{ "<Space>e", "<cmd>NvimTreeToggle<cr>", group = "File Explorer" },
	{ "<Space>q", "<cmd>quit<cr>", desc = "Quit" },
	{ "<Space>Q", "<cmd>quitall<cr>", desc = "Exit" },
	{ "<Space>w", "<cmd>update<cr>", desc = "Save" },

	{ "<Space>f", group = "Find" },
	{ "<Space>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
	{ "<Space>fw", "<cmd>Telescope live_grep<cr>", desc = "Words" },
	{ "<Space>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
	{ "<Space>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
	{ "<Space>fc", "<cmd>Telescope commands<cr>", desc = "Commands" },

	{ "<Space>p", group = "Package manager" },
	{ "<Space>pp", "<cmd>Mason<cr>", desc = "Open Package Manager" },
	{ "<Space>pu", "<cmd>MasonUpdate<cr>", desc = "Update Packages" },
	{ "<Space>pd", "<cmd>MasonUninstallAll<cr>", desc = "Update All Packages" },

	{ "<Space>s", group = "Split" },
	{ "<Space>sh", "<cmd>split<cr>", desc = "Horizontal split" },
	{ "<Space>sv", "<cmd>vsplit<cr>", desc = "Vertical split" },
	{ "<Space>su", "<cmd>:wincmd h<cr>", desc = "Focus Previous" },
	{ "<Space>si", "<cmd>:wincmd l<cr>", desc = "Focus Next" },
}

return mappings
