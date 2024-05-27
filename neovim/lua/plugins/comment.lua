return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>c",
			},
			opleader = {
				line = "<leader>c",
			},
		})
	end,
}
