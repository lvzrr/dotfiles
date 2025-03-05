-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Key mappings for Copilot control

vim.api.nvim_set_keymap("n", "<leader>ce", ":Copilot enable<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cd", ":Copilot disable<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>co", ":CopilotChatOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hh", ":Stdheader<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>cc", ":!cc -Wall -Werror -Wextra %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cg", ":!cc -Wall -Werror -Wextra % -g<CR>", { noremap = true, silent = true })
