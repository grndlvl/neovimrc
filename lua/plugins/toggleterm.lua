return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  opts = {
    --    float_opts = {
    --      width = 100,
    --      height = 20,
    --    },
  },
  keys = {
    { "<leader>t", ":ToggleTerm direction=float<CR>", desc = "Open a floating terminal at the current directory" },
  },
}
