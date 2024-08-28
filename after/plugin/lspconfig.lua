local lspconfig = require("lspconfig")
local servers = require("config.servers")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local wk = require("which-key")

for _, server in ipairs(servers) do
	if server == "lua_ls" then
		lspconfig[server].setup({
			settings = {
				Lua = {
					completion = {
						callSnippet = "Replace",
					},
				},
			},
		})
	else
		lspconfig[server].setup({
			capabilities = capabilities,
		})
	end
end

local on_attach_tw = function(_, bufnr)
	require("tailwindcss-colors").buf_attach(bufnr)
end

lspconfig["tailwindcss"].setup({
	on_attach = on_attach_tw,
})

wk.register({
	d = {
		name = "Diagnostics",
		h = {
			":lua vim.diagnostic.open_float()<CR>",
			"Hover",
		},
		u = {
			":lua vim.diagnostic.goto_prev()<CR>",
			"Go to previous",
		},
		i = {
			":lua vim.diagnostic.goto_next()<CR>",
			"Go to next",
		},
		l = {
			":lua vim.diagnostic.setloclist()<CR>",
			"Show list",
		},
	},
}, { prefix = "<space>" })

local lsp_group = vim.api.nvim_create_augroup("UserLspConfig", {})

vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_group,
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }

		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<C-]>", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<C-f>", function()
			vim.lsp.buf.format({ async = true })
		end, opts)

		local lsp_hover_group = vim.api.nvim_create_augroup("UserLspHover", { clear = true })

		vim.api.nvim_create_autocmd("CursorHold", {
			group = lsp_hover_group,
			pattern = "<buffer>",
			callback = function()
				if vim.lsp.buf.hover then
					vim.lsp.buf.hover()
				end
			end,
		})
	end,
})

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
})
