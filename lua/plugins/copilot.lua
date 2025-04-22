-- local cmp = require("cmp")
-- cmp.setup({
--   sorting = {
--     priority_weight = 2,
--     comparators = {
--       require("copilot_cmp.comparators").prioritize,
--
--       -- Below is the default comparitor list and order for nvim-cmp
--       cmp.config.compare.offset,
--       -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
--       cmp.config.compare.exact,
--       cmp.config.compare.score,
--       cmp.config.compare.recently_used,
--       cmp.config.compare.locality,
--       cmp.config.compare.kind,
--       cmp.config.compare.sort_text,
--       cmp.config.compare.length,
--       cmp.config.compare.order,
--     },
--   },
--   sources = cmp.config.sources({
--     { name = "copilot", group_index = 2 },
--     { name = "render-markdown" },
--   }),
return {
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
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
    end,
  },
}
