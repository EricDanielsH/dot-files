local M = {}

-- In order to disable a default keymap, use
--
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
M.abc = {
  n = {
    -- Select the whole text
    ["<C-a>"] = { "gg<S-v>G", "Select the whole text" },
    -- Scroll more smoothly
    -- ["<C-S-u>"] = { "<C-u>zz", "Scroll Up" },
    -- ["<C-S-d>"] = { "<C-d>zz", "Scroll Down" },
    -- Create a fold for a function
    ["<leader>j"] = { "<leader>zfa}", "Fold function" },

    -- Add an empty line
    ["<C-CR>"] = { "o<Esc>", "Add empty line under" },
    ["<C-S-CR>"] = { "O<Esc>", "Add empty line under" },

    -- ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"}
    -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    -- go to  beginning and end
    ["H"] = { "^", "Beginning of line" },
    ["L"] = { "$", "End of line" },

    -- save, quit, and save+quit
    ["<leader>w"] = { "<cmd> w <CR>", "Force save" },
    ["<C-w>"] = { "<cmd> w <CR>", "Force save" },
    ["<leader>q"] = { "<cmd> q <CR>", "Force quit" },
    -- ["<leader>x"] = { "<cmd> x <CR>", "Force save and quit" },

    -- move lines up or down
    ["K"] = { "ddkP", "Move line up" },
    ["J"] = { "ddp", "Move line down" },

    -- Use tabs to indent
    ["<Tab>"] = { ">>", "Indent right" },
    ["<S-Tab>"] = { "<<", "Indent left" },
  },

  i = {
    -- use ctrl backspace to remove a word
    ["<C-BS>"] = { "<C-w>", "Kill word backwars", { noremap = true } },
  },
}

return M
