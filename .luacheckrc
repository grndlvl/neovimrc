---@diagnostic disable
-- vim: ft=lua tw=80

stds.nvim = {
  globals = {
    "vim",
  }
}
std = "max+nvim"

-- Rerun tests only if their modification time changed.
cache = false
