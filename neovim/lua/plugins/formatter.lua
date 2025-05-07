return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			filetype = {
				-- Set up black for python
				python = {
					require("formatter.filetypes.python").black,
				},
				go = {
					require("formatter.filetypes.go").gofumpt,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				cpp = {
					require("formatter.filetypes.cpp").clangformat,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
                htmlangular = {
					require("formatter.filetypes.html").prettier,
				},
                json = {
					require("formatter.filetypes.html").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				scss = {
					require("formatter.filetypes.css").prettier,
				},
			},
		})
	end,
}
