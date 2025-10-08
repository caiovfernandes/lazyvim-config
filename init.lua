-- Load early initialization for performance
require("config.early-init")
-- Use the system clipboard
vim.opt.clipboard = "unnamedplus"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
