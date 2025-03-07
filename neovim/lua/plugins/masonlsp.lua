return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"jedi_language_server",
			"jdtls",
			"clangd",
			"html",
			"dockerls",
			"quick_lint_js",
			"ansiblels",
			"ts_ls",
			"lua_ls",
			"gopls",
		},
	},
}
