return{
    'nvim-tree/nvim-web-devicons',
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = function()
            vim.cmd[[colorscheme tokyonight]]
        end
    },
    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        priority = 999,
        opts = function()
            vim.cmd[[TransparentEnable]]
        end
    },
}
