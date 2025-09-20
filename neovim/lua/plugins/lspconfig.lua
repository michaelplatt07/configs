return {
	"neovim/nvim-lspconfig",
	config = function()
		-- local lspconfig = require("lspconfig")
		-- vim.lsp.config.cpplint.setup({})
		vim.lsp.config("jedi_language_server", {})
		vim.lsp.config("jdtls", {})
		vim.lsp.config("clangd", {})
		vim.lsp.config("html", {})
		vim.lsp.config("dockerls", {})
		vim.lsp.config("quick_lint_js", {})
		vim.lsp.config("ansiblels", {})
		vim.lsp.config("asm_lsp", {})
		vim.lsp.config("gleam", {})
		vim.lsp.config("lua_ls", {})
		vim.lsp.config("gopls", {})
		vim.lsp.config("ts_ls", {})
		vim.lsp.config("ruff", {})
	end,
}
