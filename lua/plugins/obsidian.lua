return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  keys = {
    {
      "<leader>if",
      "<cmd>ObsidianQuickSwitch<cr>",
      desc = "Quick Switch",
    },
    {
      "<leader>i|",
      "<cmd>ObsidianFollowLink vsplit<cr>",
      desc = "FollowLink Vertically",
    },
    {
      "<leader>ib",
      "<cmd>ObsidianBacklinks<cr>",
      desc = "Backlink",
    },
    {
      "<leader>id",
      "<cmd>ObsidianToday<cr>",
      desc = " to open/create a new daily note.",
    },
    {
      "<leader>il",
      "<cmd>ObsidianLinks<cr>",
      desc = "List current links",
    },
    {
      "<leader>is",
      "<cmd>ObsidianTOC<cr>",
      desc = "Table of Content",
    },
    {
      "<leader>ic",
      "<cmd>ObsidianToggleCheckbox<cr>",
      desc = "Checkbox  to collect all links within the current buffer into a picker window.",
    },
    {
      "<leader>io",
      "<cmd>ObsidianOpen<cr>",
      desc = "Open in obsidian",
    },
    -- {
    --   "<leader>it",
    --   "<cmd>ObsidianOpen<cr>",
    --   desc = "Open in obsidian",
    -- },
  },
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    -- workspaces = {
    dir = "~/Documents/LifeOs/",
    ui = { enable = false },
    --   {
    --     name = "personal",
    --     path = "~/vaults/personal",
    --   },
    --   {
    --     name = "work",
    --     path = "~/vaults/work",
    --   },
    -- },

    -- see below for full list of options 👇
  },
}
