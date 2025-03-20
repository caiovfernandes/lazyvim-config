return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "jesseleite/nvim-noirbuddy",
      "nvim-tree/nvim-web-devicons",
    },
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      local noirbuddy_lualine = require("noirbuddy.plugins.lualine")

      opts.options = {
        icons_enabled = true,
        theme = noirbuddy_lualine.theme,
        filetype = { colored = false },
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {},
        always_divide_middle = true,
      }
      opts.sections = noirbuddy_lualine.sections
      opts.inactive_sections = noirbuddy_lualine.inactive_sections

      table.insert(
        opts.sections.lualine_x,
        2,
        LazyVim.lualine.status(LazyVim.config.icons.kinds.Copilot, function()
          local clients = package.loaded["copilot"] and LazyVim.lsp.get_clients({ name = "copilot", bufnr = 0 }) or {}
          if #clients > 0 then
            local status = require("copilot.api").status.data.status
            return (status == "InProgress" and "pending") or (status == "Warning" and "error") or "ok"
          end
        end)
      )

      local x = opts.sections.lualine_x
      for _, comp in ipairs(x) do
        if comp[1] == "diff" then
          comp.source = function()
            local summary = vim.b.minidiff_summary
            return summary
              and {
                added = summary.add,
                modified = summary.change,
                removed = summary.delete,
              }
          end
          break
        end
      end
      return opts
    end,
  },
}
