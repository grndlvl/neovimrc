return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "\\n", ":NvimTreeToggle<CR>", desc = "Open NvimTree" },
  },
  config = function()
    require("nvim-tree").setup()

    -- Automatically close when last buffer is closed.
    vim.api.nvim_create_autocmd({ "QuitPre" }, {
      callback = function()
        vim.cmd("NvimTreeClose")
      end,
    })
  end,
}
