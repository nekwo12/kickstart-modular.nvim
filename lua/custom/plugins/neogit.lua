-- https://github.com/NeogitOrg/neogit
-- https://github.com/sindrets/diffview.nvim
-- https://github.com/rhysd/committia.vim
local function gh(repo) return 'https://github.com/' .. repo end

---@type (string|vim.pack.Spec)[]
local plugins = {
  gh 'NeogitOrg/neogit',
  gh 'sindrets/diffview.nvim',
  gh 'rhysd/committia.vim',
}

vim.pack.add(plugins)
