require("config.remap")
require("config.lazy")

local homedirectory = os.getenv("HOME")

-- Defaults
vim.opt.encoding = "utf-8"

-- UI elements
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.visualbell = true
vim.opt.termguicolors = true

-- Directories for swp files
vim.opt.backupdir = homedirectory .. "/.vim/backup"
vim.opt.directory = homedirectory .. "/.vim/backup"

-- Whitespace stuff
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.list = true
vim.opt.listchars = {
  trail = "·",
  tab = "░░",
}

-- Tab completion
vim.opt.wildmode = "list:longest,list:full"
