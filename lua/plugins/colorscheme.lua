-- {
--
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
--
vim.g.material_style = "oceanic"
vim.g.material_disable_background = true
return {
  -- {
  --   "jesseleite/nvim-noirbuddy",
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim" },
  --   },
  --   install = { colorscheme = { "noirbuddy" } },
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     -- preset = "miami-nights",
  --     styles = {
  --       italic = true,
  --       bold = false,
  --       underline = false,
  --       undercurl = true,
  --     },
  --   },
  -- },
  -- { "rebelot/kanagawa.nvim" },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "kanagawa",
  --   },
  -- },
  -- lua/plugins/rose-pine.lua
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  --   opts = {
  --     dim_inactive_windows = true,
  --     highlight_groups = {
  --       CurSearch = { fg = "base", bg = "leaf", inherit = false },
  --       Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
  --       TelescopeBorder = { fg = "highlight_high", bg = "none" },
  --       TelescopeNormal = { bg = "none" },
  --       TelescopePromptNormal = { bg = "base" },
  --       TelescopeResultsNormal = { fg = "subtle", bg = "none" },
  --       TelescopeSelection = { fg = "text", bg = "base" },
  --       TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
  --     },
  --     enable = {
  --       terminal = true,
  --       legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
  --       migrations = true, -- Handle deprecated options automatically
  --     },
  --     styles = {
  --       bold = true,
  --       italic = true,
  --       transparency = true,
  --     },
  --   },
  -- },
  {
    "marko-cerovac/material.nvim",
    config = function()
      require("material").setup({
        contrast = {
          terminal = false, -- Enable contrast for the built-in terminal
          sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = true, -- Enable contrast for floating windows
          cursor_line = false, -- Enable darker background for the cursor line
          lsp_virtual_text = true, -- Enable contrasted background for lsp virtual text
          non_current_windows = true, -- Enable contrasted background for non-current windows
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = {
            italic = true,
          },
          strings = {
            bold = true,
          },
          functions = {
            bold = true,
            undercurl = true,
          },
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          "flash",
          "gitsigns",
          "mini",
          "neogit",
          "noice",
          "nvim-cmp",
          "nvim-tree",
          "telescope",
          "trouble",
          "which-key",
        },

        disable = {
          colored_cursor = false, -- Disable the colored cursor
          borders = false, -- Disable borders between vertically split windows
          background = false, -- Prevent the theme from setting the background (NeoVim then uses your  background)
          term_colors = true, -- Prevent the theme from setting terminal colors
          eob_lines = false, -- Hide the end-of-buffer lines
        },

        high_visibility = {
          lighter = false, -- Enable higher contrast text for lighter style
          darker = true, -- Enable higher contrast text for darker style
        },

        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = false, -- Load parts of the theme asynchronously for faster startup (turned on by default)
      })

      vim.cmd("colorscheme material")
    end,
  },
}
