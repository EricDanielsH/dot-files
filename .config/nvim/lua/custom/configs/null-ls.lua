-- custom/configs/null-ls.lua
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.clang_format,
  -- formatting.clangd,
  -- formatting.uncrustify,

  lint.eslint,
  lint.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,

  -- you can reuse a shared lspconfig on_attach callback here
}
