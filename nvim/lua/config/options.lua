-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

LazyVim.terminal.setup("ghostty")

local opt = vim.opt
opt.clipboard = "unnamedplus"
opt.tabstop = 4
opt.showtabline = 0
opt.shiftwidth = 4
opt.termguicolors = true
opt.linebreak = true
opt.wrap = true
opt.number = true
opt.relativenumber = true
opt.textwidth = 0
opt.numberwidth = 1
opt.fixendofline = false
opt.shell = "zsh"
opt.fileencoding = "utf-8"
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver20,r-cr-o:hor20"
opt.guifont = "Liga SFMono Nerd Font:h13"
