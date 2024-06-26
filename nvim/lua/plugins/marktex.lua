local map = vim.keymap.set

return {
    -- LaTeX support
    {
        'lervag/vimtex',
        config = function()
            vim.g['vimtex_view_method'] = 'zathura'
            vim.g['vimtex_quickfix_open_on_warning'] = 0
            vim.g['vimtex_compiler_latexmk_engines'] = {
                _        = '-xelatex',
                pdfdvi   = '-pdfdvi',
                pdfps    = '-pdfps',
                pdflatex = '-pdf',
                luatex   = '-lualatex',
                lualatex = '-lualatex',
                xelatex  = '-xelatex',
            }
        end
    },

    -- Enable `vimtex#syntax#in_mathzone` in markdown
    {
        'preservim/vim-markdown',
        config = function()
            vim.g['vim_markdown_math'] = 1
            vim.g['vim_markdown_folding_disabled'] = 1
        end
    },

    -- Autogenerate table of contents
    {
        'mzlogin/vim-markdown-toc',
        config = function()
            vim.g['vmt_list_item_char'] = '-'
            vim.g['vmt_fence_text'] = 'TOC'
            vim.g['vmt_fence_closing_text'] = '/TOC'
        end
    },

    -- Markdown live preview
    {
        'iamcco/markdown-preview.nvim',
        cmd = {
            'MarkdownPreviewToggle',
            'MarkdownPreview',
            'MarkdownPreviewStop'
        },
        build = 'cd app && yarn install',
        -- If installed this plugin before installing yarn, installation will
        -- fail. Plugin still able to use but no preview window showing.
        -- At that time, run:
        -- ~/.local/share/nvim/lazy/markdown-preview.nvim/app/install.sh
        init = function()
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { "markdown" },
        config = function()
            map('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', { silent = true })
        end
    },
}
