return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    config = function()
      require("refactoring").setup({})
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  -- Find and Replace
  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "BurntSushi/ripgrep",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
