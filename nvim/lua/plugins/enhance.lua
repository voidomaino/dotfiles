local map = vim.keymap.set

return{
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require("nvim-tree").setup()
            map('', '<leader>e', '<cmd>NvimTreeToggle<CR>', { silent = true })
        end
    },
}
