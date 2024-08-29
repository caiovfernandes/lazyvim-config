return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        auto_session_suppress_dirs = { "~/*" },
        session_lens = {
          buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
          load_on_setup = true,
          theme_conf = { border = true },
          previewer = true,
        },
        vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, {
          noremap = true,
        }),
      })
    end,
  },
}
