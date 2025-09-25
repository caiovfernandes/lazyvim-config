return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Diff View" },
    { "<leader>gt", "<cmd>DiffviewToggleFiles<cr>", desc = "Toggle Files Panel" },
    { "<leader>gf", "<cmd>DiffviewFocusFiles<cr>", desc = "Focus Files Panel" },
  },
  opts = {
    enhanced_diff_hl = true,
    file_panel = {
      listing_style = "tree",
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
    },
    hooks = {
      diff_buf_read = function(bufnr)
        -- Enable spell checking in diff buffers
        vim.api.nvim_buf_set_option(bufnr, "spell", true)
      end,
    },
  },
}
