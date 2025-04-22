return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "terraform", "hcl", "markdown", "markdown_inline" },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },
}
