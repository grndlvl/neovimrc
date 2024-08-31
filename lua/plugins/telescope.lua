return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files using Telescope" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files using Telescope" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search help tags using Telescope" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "List buffers in Telescope" })
    end,
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
