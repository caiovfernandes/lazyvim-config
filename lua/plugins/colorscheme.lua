return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      italic_comments = true,
      hide_fillchars = true,
      boderless_telescope = true,
      terminal_colors = true,
      cache = true,
    },
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "marko-cerovac/material.nvim",
    opts = {
      contrast = {
        terminal = true, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = true, -- Enable darker background for the cursor line
        lsp_virtual_text = true, -- Enable contrasted background for lsp virtual text
        non_current_windows = true, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        -- strings = { bold = true },
        keywords = { underline = true },
        functions = { bold = true, undercurl = true },
        variables = {},
        operators = {},
        types = {},
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "coc",
        -- "colorful-winsep",
        -- "dap",
        "dashboard",
        -- "eyeliner",
        -- "fidget",
        "flash",
        "gitsigns",
        "harpoon",
        -- "hop",
        "illuminate",
        "indent-blankline",
        -- "lspsaga",
        "mini",
        "neogit",
        -- "neotest",
        "neo-tree",
        -- "neorg",
        "noice",
        -- "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        -- "rainbow-delimiters",
        -- "sneak",
        "telescope",
        "trouble",
        "which-key",
        "nvim-notify",
      },

      disable = {
        colored_cursor = true, -- Disable the colored cursor
        borders = true, -- Disable borders between vertically split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = true, -- Prevent the theme from setting terminal colors
        eob_lines = false, -- Hide the end-of-buffer lines
      },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
      },

      lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to override the default colors, set this to a function

      custom_highlights = {}, -- Overwrite highlights with your own
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
