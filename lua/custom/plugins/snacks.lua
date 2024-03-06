-- https://github.com/folke/snacks.nvim#-installation
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'folke/snacks.nvim', name = "snacks.nvim" } }

require('snacks').setup({
    bigfile = { enabled = true },
    dashboard = {
        enabled = true,
        preset = {
            keys = {
                { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = "󰊳 ", key = "M", desc = "Mason", action = ":Mason" },
                { icon = " ", key = "V", desc = "View Plugins", action = ":lua vim.pack.update(nil, { offline = true })" },
                { icon = " ", key = "U", desc = "Update Plugins", action = ":lua vim.pack.update()" },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            }
        },
        sections = {
            { section = "header" },
            { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        },
    },
    notifier = {
        enabled = true,
        timeout = 3000,
    },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
})
