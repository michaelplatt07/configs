return {
	"michaelplatt07/buffer-me.nvim",
	branch = "main",
	config = function()
		local bufferme = require("buffer-me")
		bufferme.setup({
			auto_manage = true,
			most_recent_to_top = true,
		})
	end,
}
