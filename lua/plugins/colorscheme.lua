return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      filter = "classic",
      background_clear = {
        "bufferline",
        "lualine",
        "nvim-tree",
        "telescope",
      },
    })
    vim.cmd.colorscheme("monokai-pro")
  end,
}
