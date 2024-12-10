return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        header = [[
                               
██╗    ██╗   ██╗███████╗██████╗    ███╗   ██╗██╗   ██╗██╗███╗   ███╗
██║    ██║   ██║╚══███╔╝██╔══██╗   ████╗  ██║██║   ██║██║████╗ ████║
██║    ██║   ██║  ███╔╝ ██████╔╝   ██╔██╗ ██║██║   ██║██║██╔████╔██║
██║    ╚██╗ ██╔╝ ███╔╝  ██╔══██╗   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
███████╗╚████╔╝ ███████╗██║  ██║██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚══════╝ ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                                    
          ]],
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
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
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
