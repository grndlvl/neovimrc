return {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		lazy = true,
		background_clear = {
			"bufferline",
			"lualine",
			"telescope"
		},
		config = function()
			local monokai = require("monokai-pro")
			monokai.setup({
				filter = "classic"
			})
			monokai.load()
		end
	}
}
