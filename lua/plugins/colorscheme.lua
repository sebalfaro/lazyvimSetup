return {
  -- -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- { "ntk148v/vim-horizon" },
  { "lunarvim/horizon.nvim" },
  { "savq/melange-nvim" },
  { "folke/lsp-colors.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "Shatur/neovim-ayu" },
  {
    "rebelot/kanagawa.nvim",
    -- config = function()
    --   require("kanagawa").load("dragon")
    -- end,
  },
  { "nyoom-engineering/oxocarbon.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-baby",
    },
  },
}
