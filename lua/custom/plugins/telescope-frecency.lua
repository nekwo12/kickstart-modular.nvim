-- https://github.com/nvim-telescope/telescope-frecency.nvim
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'nvim-telescope/telescope-frecency.nvim', name = "telescope-frecency.nvim" } }
