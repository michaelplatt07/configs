return {
	"michaelplatt07/buffer-me.nvim",
	-- branch = "main",
	branch = "unit-test-work",
	config = function()
		local bufferme = require("buffer-me")
		bufferme.setup({
			auto_manage = true,
		})
	end,
}
