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
			"angularls",
			"lua_ls",
			"gopls",
		},
	},
}
