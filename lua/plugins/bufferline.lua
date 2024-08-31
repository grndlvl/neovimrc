return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
  event = "BufEnter",
  keys = {
    { "<C-Left>", ":bprevious<CR>", desc = "Buffer previous" },
    { "<C-Right>", ":bnext<CR>", desc = "Buffer next" },
  },
}
