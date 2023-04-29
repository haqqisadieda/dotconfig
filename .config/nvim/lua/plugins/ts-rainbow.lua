return {
  {
    "p00f/nvim-ts-rainbow",
    event = "BufRead",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    init = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
