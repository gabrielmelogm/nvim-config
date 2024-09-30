local lualine = require("lualine")

local theme = 'tokyonight'

-- IDE Theme
vim.cmd("colorscheme " .. theme)

-- Botton dashboard theme
lualine.setup({
	options = {
		theme = theme,
	},
})
