return{
    'nvim-tree/nvim-web-devicons',
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        opts = function()
            vim.cmd.colorscheme "catppuccin-latte"
        end
    },
    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        priority = 999,
        opts = function()
            -- vim.cmd[[TransparentEnable]]
        end
    },
}
