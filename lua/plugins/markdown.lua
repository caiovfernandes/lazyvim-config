return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      { "<leader>cp", ft = "markdown", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
    },
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_browser = ""
      vim.g.mkdp_images_path = vim.fn.expand("~/.cache/markdown-preview-nvim/")
      vim.g.mkdp_preview_options = {
        image_zoom_factor = 1.0,
      }
    end,
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
  },
}

