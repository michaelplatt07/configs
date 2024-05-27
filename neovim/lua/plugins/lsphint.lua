return {
	"ray-x/lsp_signature.nvim",
	config = function()
		require("telescope").setup({
			--floating_window_above_cur_line = false,
			hint_prefix = "",
			transparency = 50,
			select_signature_key = "<C-n>",
			toggle_key = "<leader><Space>",
		})
	end,
}
