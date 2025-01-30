return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            panel = {
                enabled = true,
                auto_refresh = false,
                keymap = {
                    jump_prev = "[[",
                    jump_next = "]]",
                    accept = "<C-a>", -- Accept in panel
                    refresh = "gr",
                    open = "<M-CR>",
                },
                layout = {
                    position = "bottom",
                    ratio = 0.4,
                },
            },
            suggestion = {
                enabled = true,
                auto_trigger = false, -- Prevents auto-suggestions
                hide_during_completion = true,
                debounce = 75,
                keymap = {
                    accept = "<C-a>", -- Accept inline suggestions
                    accept_word = false,
                    accept_line = false,
                    next = "<C-l>",
                    prev = "<C-k>",
                    dismiss = "<C-]>",
                },
            },
            filetypes = {
                yaml = false,
                markdown = false,
                help = false,
                gitcommit = false,
                gitrebase = false,
                hgcommit = false,
                svn = false,
                cvs = false,
                ["."] = false,
            },
            copilot_node_command = "node", -- Ensure Node.js version > 18.x
            server_opts_overrides = {},
        })
    end,
}
