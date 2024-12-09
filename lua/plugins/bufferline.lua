local bufferline = require("bufferline")
return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      style_preset = bufferline.style_preset.minimal,
      themable = true,
      show_buffer_close_icons = false,
      sort_by = "directory",
      --
      -- sort_by = 'insert_after_current' |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
      -- separator_style = "slope",
      -- | "slope" | "thick" | "thin" | { 'any', 'any' },
    },
  },
}
