return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
	"nvim-tree/nvim-web-devicons"
    },
    options = {
	theme = "monokai-pro"
    },
    config = function()
	require("lualine").setup()
    end
}
