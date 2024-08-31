return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    end,
  },
  --	{
  --		"nvim-telescope/telescope-file-browser.nvim",
  --		dependencies = {
  --			"nvim-telescope/telescope.nvim",
  --			"nvim-lua/plenary.nvim"
  --		},
  --		config = function()
  --			require("telescope").load_extension "file_browser"
  --			vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
  --		end
  --	}
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
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
      vim.keymap.set("n", "<leader>p", ":Telescope project<CR>")
    end,
  },
}
