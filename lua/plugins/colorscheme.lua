-- return {
-- {
--   "projekt0n/github-nvim-theme",
--   name = "github-theme",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("github-theme").setup({
--       -- ...
--     })
--
--     vim.cmd("colorscheme github_dark")
--   end,
-- },

-- {
--   "nyoom-engineering/oxocarbon.nvim",
-- },
-- {
--   "dark-orchid/neovim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- },
--
-- }

-- lua/plugins/rose-pine.lua
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
  end,
}
