-- https://github.com/stevearc/oil.nvim
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'stevearc/oil.nvim', name = "oil.nvim" } }

require('oil').setup({
    columns = { "icon" },

    -- Set to false if you still want to use netrw.
    default_file_explorer = true,

    view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
    },
})

-- [[ Keymaps ]]
-- Open parent directory in current window
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Open parent directory in floating window
vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })
