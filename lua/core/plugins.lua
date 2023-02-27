-- bootstrap lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
local plugins = {
    -- themes
    -- 'phanviet/vim-monokai-pro',
    'tanvirtin/monokai.nvim',
    'ellisonleao/gruvbox.nvim',
    -- file explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    -- statusline
    'nvim-lualine/lualine.nvim',
    -- better syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    -- search functionality
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- lsp package manager
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },
    -- completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    {
        'L3MON4D3/LuaSnip',
        -- follow latest release
        -- tag = '<CurrentMajor>.*',
        -- install jsregexp (optional!:)
        run = 'make install_jsregexp',
    },
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    -- copilot
    'github/copilot.vim',
    -- easier way to comment out lines
    'tpope/vim-commentary',
}

local opts = {}

-- load plugins
require("lazy").setup(plugins, opts)
