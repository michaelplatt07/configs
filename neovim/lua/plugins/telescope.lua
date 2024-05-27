return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			pickers = {
				buffers = {
					mappings = {
						i = {
							["<c-d>"] = actions.delete_buffer + actions.move_to_top,
							["<c-t>"] = actions.file_tab,
							["<c-v>"] = actions.file_vsplit,
							["<c-h>"] = actions.file_split,
							["<c-n>"] = actions.move_selection_next,
							["<c-p>"] = actions.move_selection_previous,
						},
						n = {
							["<c-d>"] = actions.delete_buffer + actions.move_to_top,
							["<c-t>"] = actions.file_tab,
							["<c-v>"] = actions.file_vsplit,
							["<c-h>"] = actions.file_split,
						},
					},
				},
			},
		})
	end,
}
