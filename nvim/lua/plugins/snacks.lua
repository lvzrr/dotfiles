return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[I use Neovim, btw.]],
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 0, padding = 0 },
        -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        -- {
        --   section = "terminal",
        --   cmd = "doers",
        --   pane = 2,
        --   indent = 10,
        --   height = 40,
        -- },
      },
    },

    bigfile = { enabled = true },
    notifier = { enabled = true, style = "minimal" },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    indent = { enabled = false },
  },
}
