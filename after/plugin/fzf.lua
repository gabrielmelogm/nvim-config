local fzf = require("fzf-lua")
local wk = require("which-key")

fzf.setup()

wk.add({
	{
		"<Space>m",
		group = "Fzf",
	},
	{
		"<Space>mm",
		"<cmd>FzfLua<cr>",
		desc = "Open Dashboard",
	},
	{
		"<Space>mf",
		"<cmd>FzfLua files<cr>",
		desc = "Search files",
	},
	{
		"<Space>mt",
		"<cmd>FzfLua filetypes<cr>",
		desc = "Set Filetype",
	},
	{
		mode = { "n" },
	},
})
