local tree = require("nvim-tree")

tree.setup({
	view = {
		width = 50,
	},
	filters = {
		dotfiles = true,
	},
})
