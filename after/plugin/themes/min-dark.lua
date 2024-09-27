local minTheme = require("min-theme")

minTheme.setup({
	theme = 'dark',
	transparent = false,
	italics = {
		comments = true,
		keywords = false,
		functions = false,
		strings = false,
		variables = false
	},
	overrides = {}
})

-- vim.cmd.colorscheme('min-theme')
