local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    --{ import = "lazyvim.plugins.extras.ui.mini-animate" },
    { -- Autocompletion
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind.nvim",
      },
      config = true,
    },
    -- autopairs and autotag
    { "windwp/nvim-autopairs" },
    --{
    --  "windwp/nvim-ts-autotag",
    --  ft = { "html" },
    --  lazy = true,
    --  config = true,
    -- },

    -- highlight css colors
    {
      "brenoprata10/nvim-highlight-colors",
      ft = { "css" },
      config = true,
      lazy = true,
    },
    -- Autotags
    {
      "windwp/nvim-ts-autotag",
      config = true,
    },
    -- Comments
    {
      "terrortylor/nvim-comment",
      config = function()
        require("nvim_comment").setup()
      end,
    },

    -- Autosave
    {
      "pocco81/auto-save.nvim",
      config = function()
        require("auto-save").setup()
      end,
    },
    -- Colorizer
    {
      "HiPhish/nvim-ts-rainbow2",
      config = function()
        require("nvim-treesitter.configs").setup({
          rainbow = {
            enable = true,
            -- list of languages you want to disable the plugin for
            disable = { "jsx", "cpp" },
            -- Which query to use for finding delimiters
            query = "rainbow-parens",
            -- Highlight the entire buffer all at once
            strategy = require("ts-rainbow").strategy.global,
          },
        })
      end,
    },
    -- import/override with your plugins
    { import = "plugins" },
  },

  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "gruvbox", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
