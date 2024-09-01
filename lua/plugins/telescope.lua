return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    keys = {
      { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files using Telescope" },
      { "<leader>fg", ":Telescope live_grep<CR>", desc = "Grep files using Telescope" },
      { "<leader>fh", ":Telescope help_tags<CR>", desc = "Search help tags using Telescope" },
      { "<leader>fb", ":Telescope buffers<CR>``", desc = "List buffers in Telescope" },
    },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>p", ":Telescope project<CR>", desc = "Open Telescope project" },
    },
    config = function()
      require("telescope").load_extension("project")
      require("telescope").setup({
        extensions = {
          project = {
            sync_with_nvim_tree = true,
          },
        },
      })
    end,
  },
}
