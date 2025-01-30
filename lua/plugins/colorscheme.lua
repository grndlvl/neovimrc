return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  --"loctvl842/monokai-pro.nvim",
  --lazy = false,
  --priority = 1000,
  --config = function()
  --  require("monokai-pro").setup({
  --    filter = "classic",
  --    background_clear = {
  --      "bufferline",
  --      "lualine",
  --      "nvim-tree",
  --      "telescope",
  --    },
  --    overridePalette = function()
  --      return {
  --        background = "#272822",
  --      }
  --    end,
  --  })
  --  vim.cmd.colorscheme("monokai-pro")
  --end,
}
