return {
  {
    "snacks.nvim",
    opts = {
      image = {
        enabled = true,
        doc = {
          enabled = true,
        },
      },
      dashboard = {
        width = 80,
        row = nil, -- dashboard position. nil for center
        col = nil, -- dashboard position. nil for center
        pane_gap = 10, -- empty columns between vertical panes
        sections = {
          { section = "header" },
          {
            pane = 6,
            gap = 3,
            section = "terminal",
            cmd = "colorscript -e square",
            height = 5,
            padding = 1,
          },
          { section = "keys", gap = 1, padding = 1 },
          {
            pane = 6,
            gap = 3,
            icon = " ",
            desc = "Browse Repo",
            padding = 1,
            key = "b",
            action = function()
              Snacks.gitbrowse()
            end,
          },
          function()
            local in_git = Snacks.git.get_root() ~= nil
            local cmds = {
              {
                title = "Notifications",
                cmd = "gh notify -s -a -n5",
                action = function()
                  vim.ui.open("https://github.com/notifications")
                end,
                key = "n",
                icon = " ",
                height = 1,
                enabled = true,
              },
              {
                title = "Open Issues",
                cmd = "gh issue list -L 3 || true",
                key = "i",
                action = function()
                  vim.fn.jobstart("gh issue list --web", { detach = true })
                end,
                icon = " ",
                height = 3,
              },
              {
                icon = " ",
                title = "Open PRs",
                cmd = "gh pr list -L 3 || true ",
                key = "P",
                action = function()
                  vim.fn.jobstart("gh pr list --web", { detach = true })
                end,
                height = 1,
              },
              {
                icon = " ",
                title = "Git Status",
                cmd = "git --no-pager diff --stat -B -M -C",
                height = 3,
              },
            }
            return vim.tbl_map(function(cmd)
              return vim.tbl_extend("force", {
                pane = 6,
                gap = 3,
                section = "terminal",
                enabled = in_git,
                padding = 2,
                ttl = 3 * 60,
                indent = 3,
              }, cmd)
            end, cmds)
          end,
          { section = "startup" },
        },
      },
    },
  },
}
