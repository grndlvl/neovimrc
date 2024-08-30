return {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		devicons = true,
		config = function()
			local monokai = require("monokai-pro")
			monokai.setup({
				filter = "classic",
				background_clear = {
					"bufferline",
					"lualine",
					"nvim-tree",
					"telescope"
				},
			})
			monokai.load()
		end
	}
}
