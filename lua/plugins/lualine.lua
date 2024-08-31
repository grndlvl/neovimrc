return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "loctvl842/monokai-pro.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local colors = require("monokai-pro.colorscheme")

    require("lualine").setup({
      options = {
        theme = "monokai-pro",
      },
      sections = {
        lualine_x = {
          "encoding",
          "fileformat",
          "filetype",
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = { fg = colors.base.magenta },
          },
        },
      },
    })
  end,
}
