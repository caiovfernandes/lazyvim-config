return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = true -- runs require('Coment').setup() automatically
}
