return {

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    highlight = {
      enable = true,
    },
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "hcl",
        "terraform",
      },
    },
  },
  -- {
  --   "Afourcat/treesitter-terraform-doc.nvim",
  --   dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Ensure Treesitter is installed
  --   config = function()
  --     require("nvim-treesitter.configs").setup({
  --       ensure_installed = { "hcl", "terraform" }, -- Install Treesitter parsers for Terraform
  --       highlight = { enable = true },
  --       indent = { enable = true },
  --     })
  --
  --     -- Load the treesitter-terraform-doc plugin
  --     require("treesitter-terraform-doc").setup()
  --   end,
  -- },
}
