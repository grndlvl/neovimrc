return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup()
    vim.keymap.set("", "\\n", ":NvimTreeToggle<CR>")

    -- Automatically close when last buffer is closed.
    vim.api.nvim_create_autocmd({ "QuitPre" }, {
      callback = function()
        vim.cmd("NvimTreeClose")
      end,
    })
  end,
}
