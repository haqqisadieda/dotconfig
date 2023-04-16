return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = {
      "bash",
      "c",
      "html",
      "javascript",
      "json",
      "jsonc",
      "lua",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "go",
    }
  end,
}
