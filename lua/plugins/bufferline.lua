return {
	"akinsho/bufferline.nvim",
	version = "4.7.0",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require("bufferline").setup({})
	end
}
