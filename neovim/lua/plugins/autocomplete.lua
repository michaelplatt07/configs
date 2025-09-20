return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp = require("cmp")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- add a capabilities for each of the servers configured.
		vim.lsp.config("jedi_language_server", {
			capabilities = capabilities,
		})
		vim.lsp.config("jdtls", {
			capabilities = capabilities,
		})
		vim.lsp.config("clangd", {
			capabilities = capabilities,
		})
		vim.lsp.config("html", {
			capabilities = capabilities,
		})
		vim.lsp.config("dockerls", {
			capabilities = capabilities,
		})
		vim.lsp.config("quick_lint_js", {
			capabilities = capabilities,
		})
		vim.lsp.config("ansiblels", {
			capabilities = capabilities,
		})
		vim.lsp.config("angularls", {
			capabilities = capabilities,
		})
		vim.lsp.config("gopls", {
			capabilities = capabilities,
		})
		vim.lsp.config("gleam", {
			capabilities = capabilities,
		})
		cmp.setup({
			confirmation = { complteopt = "menu,menuone,noinsert" },
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			window = {},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "vsnip" },
			}),
			-- rebind keys to what i want
			mapping = cmp.mapping.preset.insert({
				["<up>"] = cmp.mapping.select_prev_item(),
				["<down>"] = cmp.mapping.select_next_item(),
				["<c-e>"] = cmp.mapping.confirm({ select = true }),
				["<c-r>"] = cmp.mapping.abort(),
			}),
			{
				{ name = "buffer" },
			},
		})
	end,
}
