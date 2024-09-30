local diffview = require("diffview")
local wk = require("which-key")

diffview.setup()

wk.add({
	{
		"<Space>g", group = "Git"
	},
	{
		"<Space>go", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View"
	},
	{
		"<Space>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Open File History"
	},
	{
		"<Space>gr", "<cmd>DiffviewRefresh<cr>", desc = "Refresh Files"
	},
})
