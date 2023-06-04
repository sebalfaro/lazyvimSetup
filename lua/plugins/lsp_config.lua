return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      -- pyright = {},
      cssls = {},
      eslint = {},
      jsonls = {},
    },
  },
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        --"python",
        --"query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "java",
      },
    },
    -- require("luasnip/loaders/from_vscode").lazy_load(),
  },
}
