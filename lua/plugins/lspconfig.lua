return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = {
          filetypes = { "terraform", "hcl" },
          root_dir = require("lspconfig.util").root_pattern(".terraform", ".git"),
        },
      },
    },
  },
}
