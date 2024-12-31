-- MAPPINGS --
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "Toggle Tree" })

-- Increase or decrease numbers
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "_", "<C-X>")

-- Delete current buffer
vim.keymap.set("n", "tw", "<cmd>bd<CR>", { desc = "Delete buffer" })


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

-- Manage tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab" })

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
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })

-- Resize window
vim.keymap.set("n", "<C-S-h>", "<C-w><")
vim.keymap.set("n", "<C-S-1>", "<C-w>>")
vim.keymap.set("n", "<C-S-k>", "<C-w>+")
vim.keymap.set("n", "<C-S-jy", "<C-w>-")

-- Split windows
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical buffer" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal buffer" })
vim.keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close buffer" })

-- Create new buffer
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer" })

-- Intelligent cursor
vim.keymap.set("n", "k", "(v:count == 0 ? 'gk' : 'k')", { expr = true, desc = "Move down" })
vim.keymap.set("n", "j", "(v:count == 0 ? 'gj' : 'j')", { expr = true, desc = "Move up" })

-- Terminal mappings
-- local opts = { noremap = true }
-- vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
-- vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
-- vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
-- vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)

-- function _G.set_terminal_keymaps()
--   local opts = { noremap = true }
--   vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
--   vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
--   vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
--   vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
-- end
