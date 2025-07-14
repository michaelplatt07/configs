return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "c", "python", "html", "typescript", "javascript", "java", "vim", "vimdoc", "comment" },
			highlight = { enable = true },
		})
	end,
}
