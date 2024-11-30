-- lazy.nvim
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      views = {
        cmdline_popup = {
          position = {
            row = 55,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "none",
          },
        },
        popupmenu = {
          relative = "relative",
          position = {
            row = 8,
            col = "50%",
          },
          size = {
            width = 60,
            height = 20,
          },
          border = {
            style = "single",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
    },
  },
}
