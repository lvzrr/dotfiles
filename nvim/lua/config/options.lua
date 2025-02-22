-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

LazyVim.terminal.setup("ghostty")

local opt = vim.opt
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.tabstop = 4 -- Set width of a tab character to 4 spaces
opt.shiftwidth = 4 -- Set indentation width for auto-indents to 4 spaces
opt.expandtab = false -- Use actual tab characters instead of spaces
opt.smartindent = false -- Disable smart indentation
opt.showtabline = 0 -- Always hide the tab line
opt.termguicolors = true -- Enable true color support
opt.linebreak = true -- Wrap lines at convenient points
opt.wrap = true -- Enable line wrapping
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.textwidth = 0 -- Disable automatic line wrapping
opt.numberwidth = 1 -- Set minimal width of line number column
opt.fixendofline = false -- Do not add a newline at the end of the file
opt.shell = "zsh" -- Use zsh as the default shell
opt.fileencoding = "utf-8" -- Set file encoding to UTF-8
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver20,r-cr-o:hor20" -- Customize cursor appearance
opt.guifont = "Liga SFMono Nerd Font:h13" -- Set GUI font
