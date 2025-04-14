-- {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- },
-- {
--   "aliqyan-21/darkvoid.nvim",
--   name = "darkvoid",
--   opts = {
--     transparent = true,
--     glow = true,
--     show_end_of_buffer = true,
--     plugins = {
--       snacks = false,
--       lualine = false,
--     },
--   },
-- },
-- {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     transparent = true,
--     italic_comments = true,
--     hide_fillchars = true,
--     boderless_telescope = true,
--     terminal_colors = false,
--     cache = true,
--     borderless_pickers = true,
--   },
-- },
-- {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   opts = {
--     styles = {
--       bold = true,
--       italic = true,
--       transparency = false,
--     },
--   },
-- },
-- {
--   "nyoom-engineering/oxocarbon.nvim",
-- },
-- {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000, -- Ensure it loads first
-- },
return {
  {
    "jesseleite/nvim-noirbuddy",
    dependencies = {
      { "tjdevries/colorbuddy.nvim" },
    },
    install = { colorscheme = { "noirbuddy" } },
    lazy = false,
    priority = 1000,
    opts = {
      -- preset = "miami-nights",
      styles = {
        italic = true,
        bold = false,
        underline = false,
        undercurl = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noirbuddy",
    },
  },
}
