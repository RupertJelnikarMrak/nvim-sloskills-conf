require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percantage = 0.2,
    },
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = true,
    },
})

color = color or 'catppuccin'
vim.cmd.colorscheme(color)

vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'NONE' })
