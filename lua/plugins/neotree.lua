return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            -- Automatically close Neo-tree after opening a file
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
}
