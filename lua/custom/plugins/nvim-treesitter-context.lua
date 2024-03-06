-- https://github.com/nvim-treesitter/nvim-treesitter-context
-- nvim-treesitter-context plugin configuration
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'nvim-treesitter/nvim-treesitter-context', name = "nvim-treesitter-context" } }
