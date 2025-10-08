return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75, -- Reduce debounce for faster suggestions
        keymap = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      panel = { enabled = false }, -- Disable panel for better performance
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    opts = {},
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup(opts)
      -- Attach cmp source whenever copilot attaches
      LazyVim.lsp.on_attach(function(client)
        if client.name == "copilot" then
          copilot_cmp._on_insert_enter({})
        end
      end)
    end,
  },
}
