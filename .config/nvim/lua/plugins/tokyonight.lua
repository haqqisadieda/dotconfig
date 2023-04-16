return {
  "folke/tokyonight.nvim",
  opts = function(_, opts)
    opts.styles = {
      conditionals = { italic = true },
      functions = { italic = true },
      properties = { italic = true },
    }
  end,
}
