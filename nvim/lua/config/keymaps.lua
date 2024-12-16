-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Accept Copilot suggestions with <Tab>
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })

-- Key mapping to enable Copilot
vim.api.nvim_set_keymap("n", "<leader>ce", ":Copilot enable<CR>", { noremap = true, silent = true })

-- Key mapping to disable Copilot
vim.api.nvim_set_keymap("n", "<leader>cd", ":Copilot disable<CR>", { noremap = true, silent = true })
