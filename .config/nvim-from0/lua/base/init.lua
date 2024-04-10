-- Basic settings
vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.wo.number = true

-- Colorscheme is set on the plugin
-- vim.cmd.colorscheme("onedark")

-- vim.opt.formatoptions:remove("c")
-- vim.opt.formatoptions:remove("r")
-- vim.opt.formatoptions:remove("o")
-- Other way of doing same command
vim.cmd([[set formatoptions-=cro]])

vim.o.clipboard = "unnamedplus"

-- Indenting
vim.opt.textwidth = 100
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Help visual block mode
vim.opt.virtualedit = 'block'

-- Split window when making :%s changes
vim.opt.inccommand = 'split'

-- Ignore if command is in lowercase
vim.opt.ignorecase = true

-- Accept real colors
vim.opt.termguicolors = true

-- Open help window under
vim.opt.splitbelow = true
vim.optsplitright = true

-- Load all mappings
require("base.mappings")

-- Load all plugins
require("base.plugins.lazy")

-- Load lualine
require("configs.lualine-config")

