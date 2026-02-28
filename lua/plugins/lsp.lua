require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"intelephense",
		"svelte-language-server",
		"html-lsp",
		"tailwindcss-language-server",
		"prettier",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

vim.lsp.config("intelephense", {})
vim.lsp.config("svelte", {})
vim.lsp.config("html", {})
vim.lsp.config("tailwindcss", {})
