local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()


-- scroll early
-- vim.o.scrolloff = 10

-- vim.cmd 'colorscheme onedark'

-- folding
-- opt.foldmethod = "marker"
-- opt.foldmarker = "{,}"

-- 80 char max
-- opt.colorcolumn = "100"

-- Indenting
opt.textwidth = 100
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
--
-- Map local leader
g.maplocalleader = ","

-------- NEORG ---------------

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print(vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Remove notifications
local notify = vim.notify

vim.notify = function(msg, ...)
  if msg:match "warning: multiple different client offset_encodings" then
    return
  end

  notify(msg, ...)
end
