return {
	"caenrique/swap-buffers.nvim",
	config = function()
		require("swap-buffers").setup({
			ignore_filetypes = { "NvimTree" },
		})
	end,
}
