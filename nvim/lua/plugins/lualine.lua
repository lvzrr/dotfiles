return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Define your colors
    local colors = {
      bg = "#202328",
      fg = "#bbc2cf",
      yellow = "#ECBE7B",
      cyan = "#008080",
      black = "#000000",
      darkblue = "#081633",
      green = "#98be65",
      orange = "#FF8800",
      violet = "#a9a1e1",
      magenta = "#c678dd",
      blue = "#51afef",
      red = "#ec5f67",
    }

    -- Customize the sections of lualine
    opts.sections.lualine_a = {
      -- { "fileformat", separator = { right = "" } }
    }
    opts.sections.lualine_b = {
      {
        "filename",
        path = 4,
        "diff",
        separator = { right = "" },
      },
      { "branch", icon = "" },
    }
    opts.sections.lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        symbols = { error = " ", warn = " ", info = " " },
        diagnostics_color = {
          error = { fg = colors.red },
          warn = { fg = colors.yellow },
          info = { fg = colors.cyan },
        },
      }, -- LSP diagnostics
      {
        "diff",
        symbols = { added = " ", modified = "󰝤 ", removed = " " },
        diff_color = {
          added = { fg = colors.green },
          modified = { fg = colors.orange },
          removed = { fg = colors.red },
        },
      },
    }
    opts.sections.lualine_x = {
      "encoding",
      "location",
      "progress",
      "filetype",
    }
    opts.sections.lualine_y = {
      {
        function()
          local msg = "No Active Lsp"
          local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        separator = { left = "" },
      },
    }
    opts.sections.lualine_z = {
      --{
      --   function()
      --     return os.date("%H:%M")
      --   end,
      --   separator = { left = "" },
      -- },
    }

    -- Customize separators
    -- opts.options.section_separators = { '', '' } -- Use arrows as section separators
    -- opts.options.component_separators = { '', '' } -- Use arrows as component separators

    -- Customize colors for different modes
    local theme = {
      normal = {
        a = { fg = colors.black, bg = colors.blue, gui = "bold" }, -- Command (normal mode) color
        b = { fg = colors.white, bg = colors.grey, gui = "bold" },
        c = { fg = colors.white, gui = "italic" },
        x = { fg = colors.white },
      },

      insert = { a = { fg = colors.black, bg = colors.violet } }, -- Insert mode color
      visual = { a = { fg = colors.black, bg = colors.orange } }, -- Visual mode color
      replace = { a = { fg = colors.black, bg = colors.cyan } }, -- Replace mode color (optional, if you need it)
      command = { a = { fg = colors.black, bg = colors.red } },
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }
    -- Set the theme
    opts.options.theme = theme
  end,
}
