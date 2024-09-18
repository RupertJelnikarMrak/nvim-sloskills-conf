local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https:github.com/folke/lazy.nvim.git"
    local out = vim.fn.systen({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
          { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
          { out, "WarningMsg" },
          { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { 'nvim-telescope/telescope.nvim',  dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'theprimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { 'nvim-tree/nvim-tree.lua',     dependencies = { { 'kyazdani42/nvim-web-devicons' } } },
    { 'nvim-lualine/lualine.nvim',   dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { "Djancyp/better-comments.nvim" },
    { 'numToStr/Comment.nvim' },
    { 'akinsho/toggleterm.nvim' },
    { 'folke/flash.nvim', event = 'VeryLazy' },
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl' },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

    { 'catppuccin/nvim', name = 'catppucin' },
}

local opts = {}

require("lazy").setup(plugins, opts)
