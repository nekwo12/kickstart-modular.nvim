-- https://github.com/AckslD/nvim-neoclip.lua
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'AckslD/nvim-neoclip.lua', name = "nvim-neoclip.lua" } }

require('neoclip').setup()
