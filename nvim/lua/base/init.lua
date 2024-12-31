-- Basic settings
vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.wo.number = true

-- Set transparency

-- Colorscheme is set on the plugin
-- vim.cmd.colorscheme("onedark")

-- vim.opt.formatoptions:remove("c")
-- vim.opt.formatoptions:remove("r")
-- vim.opt.formatoptions:remove("o")
-- Other way of doing same command
vim.cmd([[set formatoptions-=cro]])

-- From video
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.title = true
vim.opt.hlsearch = true

-- folding
--vim.opt.foldmethod = "indent"
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "{,}"

vim.o.clipboard = "unnamedplus"

-- Indenting
vim.opt.wrap = true
vim.opt.linebreak = true -- Break lines at word rather than character
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- See lines while scrolling
vim.opt.scrolloff = 10

-- Add indentation if text break
vim.opt.breakindent = true

-- Enable command preview
vim.opt.inccommand = "split"

-- Keep cursor in same place when closing file
vim.opt.splitkeep = "cursor"

-- Ignore while searching
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Help visual block mode
vim.opt.virtualedit = "block"

-- Split window when making :%s changes
vim.opt.inccommand = "split"

-- Ignore if command is in lowercase
vim.opt.ignorecase = true

-- Accept real colors
vim.opt.termguicolors = true

-- Open help window under
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Wrapping lines
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question

-- Remove backspace from these palces
vim.opt.backspace = { "start", "eol", "indent" }

-- Load all mappings
require("base.mappings")

-- Load all plugins
require("base.plugins.lazy")

-- Load lualine
require("configs.lualine-config")

-- Load bufferline
require("bufferline").setup({})
