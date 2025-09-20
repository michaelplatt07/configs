return {
	"michaelplatt07/mark-me.nvim",
	branch = "main",
	config = function()
		local markme = require("mark-me")
		markme.setup({
			autopop = true,
		})
	end,
}
