-- THIS IS NOT USED ANYMORE
-- TO SETUP MORE LANGUAGES, JUST DOWNLOAD THEM FROM MASON
-- Setup language servers.

-- cmp stuff
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Add them as needed
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  capabilities = capabilities,
})
lspconfig.solidity_ls.setup({
  capabilities = capabilities,
})

lspconfig.cssmodules_ls.setup({
  capabilities = capabilities,
})
lspconfig.tsserver.setup({
  capabilities = capabilities,
})
lspconfig.biome.setup({
  capabilities = capabilities,
})
lspconfig.tailwindcss.setup({
  capabilities = capabilities,
})
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {},
  },
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go next diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go prev diagnostic" })
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "Diagnotic setloclist" })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Lsp declaration" }, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Lsp definition" }, opts)
    vim.keymap.set("n", "P", vim.lsp.buf.hover, { desc = "Lsp hover" }, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Lsp implementation" }, opts)
    vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Lsp signature help" }, opts)
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { desc = "Lsp add workspace folder" }, opts)
    vim.keymap.set(
      "n",
      "<space>wr",
      vim.lsp.buf.remove_workspace_folder,
      { desc = "Lsp remove workspace folder" },
      opts
    )
    vim.keymap.set("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { desc = "Lsp list workspace folders" }, opts)
    vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { desc = "Lsp type definition" }, opts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Lsp rename" }, opts)
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "Lsp code action" }, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Lsp references" }, opts)
    vim.keymap.set("n", "<space>fo", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Lsp format" }, opts)
  end,
})
