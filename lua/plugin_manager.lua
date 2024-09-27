local lazy = require("lazy")

local plugins = {
	-- Themes
	"folke/tokyonight.nvim",
	"datsfilipe/min-theme.nvim",
	"olimorris/onedarkpro.nvim",
	"Mofiqul/dracula.nvim",
	"tiagovla/tokyodark.nvim",
	--
	"windwp/nvim-ts-autotag",
	"windwp/nvim-autopairs",
	"folke/which-key.nvim",
	"folke/neodev.nvim",
	"j-hui/fidget.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"nvim-lualine/lualine.nvim",
	"akinsho/toggleterm.nvim",
	"hrsh7th/cmp-vsnip",
	"mg979/vim-visual-multi",
	"norcalli/nvim-colorizer.lua",
	"RRethy/vim-illuminate",
	"onsails/lspkind.nvim",
	"themaxmarchuk/tailwindcss-colors.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		dependencies = {
			"b3nj5m1n/kommentary",
			"terrortylor/nvim-comment",
			"numToStr/Comment.nvim",
			"tpope/vim-commentary",
		},
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"lewis6991/gitsigns.nvim",
		},
		version = "^1.0.0",
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
		},
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		-- build = "make install_jsregexp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
	},
}

lazy.setup(plugins)
