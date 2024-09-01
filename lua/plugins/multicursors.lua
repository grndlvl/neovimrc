return {
  "smoka7/multicursors.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    "nvimtools/hydra.nvim",
  },
  opts = {},
  cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  keys = {
    {
      mode = { "v", "n" },
      "<leader>m",
      ":MCunderCursor<CR>",
      desc = "Create a selection for selected character under the cursor",
    },
  },
}
