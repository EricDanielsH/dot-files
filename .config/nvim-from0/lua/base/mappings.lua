
-- MAPPINGS --
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "Empty line above" })

-- Open nvim lazy file
vim.keymap.set("n", "<leader>lc", ":vsplit ~/.config/nvim/lua/configs/lazy.lua<cr>", { desc = "Open lazy config" })

-- Managing files
vim.keymap.set("n", "<Leader>w", ":write<CR>")
vim.keymap.set("n", "<Leader>x", ":wq<CR>")

-- Leave insert mode
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape insert mode" })

-- Movement throught text
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move between buffers
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, { desc = "Prev buffer" })

-- Indent multiple lines visual model
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Select whole text
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select whole text" })
-- Copy all
vim.keymap.set("n", "<C-c>", ":%y+ <CR>", { desc = "Copy file" })

-- Add empty line under
vim.keymap.set("n", "<C-cr>", "o<Esc>", { desc = "Empty line under" })
vim.keymap.set("n", "<C-S-cr>", "O<Esc>", { desc = "Empty line above" })

-- Move lines up or down
vim.keymap.set("n", "K", ":m .-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "J", ":m .+1<CR>", { desc = "Move line down" })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

-- Use ctrol backspace to remove a word
vim.keymap.set("i", "<S-BS>", "<C-w>", { desc = "Remove word" })

-- Remove entire line
vim.keymap.set("i", "<A-BS>", "<Esc>ddi", { desc = "Remove line" })

-- Go to beggining/end of line
vim.keymap.set("n", "L", "$", { desc = "Start line" })
vim.keymap.set("n", "H", "^", { desc = "End line" })

-- Switch between window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })

-- Split windows
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical buffer" })
vim.keymap.set("n", "<leader>h", ":split<CR>", { desc = "Horizontal buffer" })

-- Create new buffer
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer" })

-- Delete current buffer
vim.keymap.set("n", "<leader>db", "<cmd>bd<CR>", { desc = "Delete buffer" })

-- Intelligent cursor
vim.keymap.set("n", "k", "(v:count == 0 ? 'gk' : 'k')", { expr = true, desc = "Move down" })
vim.keymap.set("n", "j", "(v:count == 0 ? 'gj' : 'j')", { expr = true, desc = "Move up" })
