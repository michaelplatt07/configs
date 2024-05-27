return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			layout = {
				width = 30,
			},
			autojump = true,
			-- open_automatic = true,
		})
	end,
}
