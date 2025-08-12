return {
  -- Catppuccin colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads first
    lazy = false,    -- We want the colorscheme to load immediately
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      term_colors = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = true,
        -- For more plugins integrations please see https://github.com/catppuccin/nvim#integrations
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Override LazyVim's default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
