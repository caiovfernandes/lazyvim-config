return {
  -- UI plugins that slow down startup
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },

  -- Database plugins (rarely used based on usage data)
  { "tpope/vim-dadbod", enabled = false },
  { "kristijanhusak/vim-dadbod-ui", enabled = false },
  { "kristijanhusak/vim-dadbod-completion", enabled = false },

  -- Terraform plugins (can be enabled when needed)
  { "ANGkeith/telescope-terraform-doc.nvim", enabled = false },
  { "cappyzawa/telescope-terraform.nvim", enabled = false },

  -- Overseer (task runner - enable only when needed)
  { "stevearc/overseer.nvim", enabled = false },

  -- Kulala (HTTP client - enable only when needed)
  { "mistweaverco/kulala.nvim", enabled = false },

  -- Refactoring (enable only when needed)
  { "ThePrimeagen/refactoring.nvim", enabled = false },

  -- Venv selector (Python specific - enable only when needed)
  { "linux-cultist/venv-selector.nvim", enabled = false },

  -- Usage tracker (commented out anyway)
  { "gaborvecsei/usage-tracker.nvim", enabled = false },
}
