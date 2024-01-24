return {
  'akinsho/toggleterm.nvim', version = "*",
  opts = {
    persist_mode = true,
    open_mapping = [[<c-\>]],
  },
  Keys = {
      { "Leader>th", "Cmd>2ToggleTerm Size=40 Dir=~/Desktop Direction=Horizontal<Cr>", Desc = "Open A Horizontal Terminal At The Desktop Directory" },
      },
}
