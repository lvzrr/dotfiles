return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      local focused = true
      vim.api.nvim_create_autocmd("FocusGained", {
        callback = function()
          focused = true
        end,
      })
      vim.api.nvim_create_autocmd("FocusLost", {
        callback = function()
          focused = false
        end,
      })
      table.insert(opts.routes, 1, {
        filter = {
          cond = function()
            return not focused
          end,
        },
        view = "notify_send",
        opts = { stop = false },
      })

      opts.commands = {
        all = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {},
        },
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function(event)
          vim.schedule(function()
            require("noice.text.markdown").keys(event.buf)
          end)
        end,
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Define your colors
      local colors = {
        blue = "#0000ff",
        cyan = "#79dac8",
        black = "#080808",
        white = "#c6c6c6",
        red = "#ff0000",
        violet = "#d183e8",
        purple = "#dd00ff",
        grey = "#303030",
      }

      -- Customize the sections of lualine
      opts.sections.lualine_a = { { "mode", separator = { right = "" } } }
      opts.sections.lualine_b =
        { {
          "filename",
          "diff",
          separator = { right = "" },
        }, "branch" }
      opts.sections.lualine_c = {
        { "diagnostics", sources = { "nvim_lsp" } }, -- LSP diagnostics
        "encoding",
        { "filename", path = 1 },
      }
      opts.sections.lualine_x = {
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
        {
          function()
            return os.date("%H:%M:%S")
          end,
          separator = { left = "" },
        },
      }

      -- Customize separators
      -- opts.options.section_separators = { '', '' } -- Use arrows as section separators
      -- opts.options.component_separators = { '', '' } -- Use arrows as component separators

      -- Customize colors for different modes
      local theme = {
        normal = {
          a = { fg = colors.black, bg = colors.red }, -- Command (normal mode) color
          b = { fg = colors.white, bg = colors.grey },
          c = { fg = colors.grey },
          x = { fg = colors.white },
        },

        insert = { a = { fg = colors.black, bg = colors.purple } }, -- Insert mode color
        visual = { a = { fg = colors.black, bg = colors.blue } }, -- Visual mode color
        replace = { a = { fg = colors.black, bg = colors.cyan } }, -- Replace mode color (optional, if you need it)
        command = { a = { fg = colors.black, bg = colors.blue } },
        inactive = {
          a = { fg = colors.white, bg = colors.black },
          b = { fg = colors.white, bg = colors.black },
          c = { fg = colors.white },
        },
      }
      -- Set the theme
      opts.options.theme = theme
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ▄▀▀▀▀▄  ▄▀▀▄ ▄▀▀▄  ▄▀▀▄  ▄▀▄  ▄▀▀▄    ▄▀▀▄ 
█    █  █   █    █ █    █   █ █   █    ▐  █ 
▐    █  ▐  █    █  ▐     ▀▄▀  ▐  █        █ 
    █      █   ▄▀       ▄▀ █    █   ▄    █  
  ▄▀▄▄▄▄▄▄▀ ▀▄▀        █  ▄▀     ▀▄▀ ▀▄ ▄▀  
  █                  ▄▀  ▄▀            ▀    
  ▐                 █    ▐                  
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
