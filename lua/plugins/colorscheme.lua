return {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		devicons = true,
		background_clear = {
			"bufferline",
			"lualine",
			"nvim-tree",
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
