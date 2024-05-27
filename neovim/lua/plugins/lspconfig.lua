return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.jedi_language_server.setup({})
		lspconfig.jdtls.setup({})
		lspconfig.clangd.setup({})
		lspconfig.html.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.quick_lint_js.setup({})
		lspconfig.ansiblels.setup({})
		lspconfig.angularls.setup({})
		lspconfig.asm_lsp.setup({})
		lspconfig.gleam.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.gopls.setup({})
	end,
}
