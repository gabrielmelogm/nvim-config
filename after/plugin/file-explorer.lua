local tree = require("nvim-tree")

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "<CR>", api.node.open.tab, opts("Open with new tab"))
	vim.keymap.set("n", "<C-z>", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-x>", api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

tree.setup({
	on_attach = on_attach,
	view = {
		width = 30,
	},
	filters = {
		dotfiles = true
	}
})
