return {
	"michaelplatt07/preview-me.nvim",
	-- branch = "main",
	branch = "feature/store-references",
	config = function()
		local previewme = require("preview-me")
		previewme.setup({})
	end,
}
