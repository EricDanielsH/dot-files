local plugins = {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000, -- Ensure it loads first
  },
  {
    "pocco81/auto-save.nvim",
    lazy = false,
  },
  {
    "prettier/vim-prettier",
    ft = { "javascript", "typescript", "css", "scss", "json", "graphql", "markdown", "vue", "yaml", "html" },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "lua-language-server",
        "typescript-language-server",
        "html-lsp",
        "clangd",
        "prettier",
        "stylua",
        "biome",
        "clang-format",
      },
    },
  },
  {
    "vim-scripts/c.vim",
  },
  {
    "dhruvasagar/vim-table-mode",
    lazy = false,
  },
  {
    "fedepujol/move.nvim",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

        -- low level
        "c",
        "zig",
      },
    },
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    ft = "norg",
    cmd = "Neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "folke/zen-mode.nvim",
    },
    config = function()
      vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "*.norg",
        callback = function()
          vim.wo.conceallevel = 2
        end,
      })
      require("neorg").setup {
        load = {
          ["core.export"] = {},
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.concealer"] = {
            config = {
              conceal = true,
              -- icon_preset = "varied",
              icons = {
                heading = {
                  icons = { "❖", "✿", "◉", "○", "✺", "◆" },
                },
              },
            },
          }, -- Adds pretty icons to your documents
          ["core.summary"] = {},
          ["core.neorgcmd"] = {
            config = {
              load = {
                "default",
              },

              -- A list of default commands to load.
              --
              -- This feature will soon be deprecated, so it is not recommended to touch it.
              default = {
                "module.list",
                "module.load",
                "return",
              },
            },
          },
          ["core.integrations.treesitter"] = {},
          ["core.highlights"] = {},
          ["core.mode"] = {},
          ["core.autocommands"] = {},
          ["core.ui"] = {},
          -- ["core.integrations.telescope"] = {},
          -- ["core.tempus"] = {},
          -- ["core.ui.calendar"] = {},
          ["core.export.markdown"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                c201 = "~/Dropbox/norg/SCC.201",
                c202 = "~/Dropbox/norg/SCC.202",
                c204 = "~/Dropbox/norg/SCC.204",
                c205 = "~/Dropbox/norg/SCC.205",
                c211 = "~/Dropbox/norg/SCC.211",
                c212 = "~/Dropbox/norg/SCC.212",
                c230 = "~/Dropbox/norg/SCC.230",
                top = "~/Dropbox/norg/the-odin-project",
                todo = "~/Dropbox/norg/",
              },
            },
          },
        },
      }
    end,
  },

  {
    "uga-rosa/ccc.nvim",
  },
}

return plugins
