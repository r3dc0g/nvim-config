local M = {
    {
        'lervag/vimtex',
        init = function()
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.vimtex_compiler_method = 'latexmk'
            vim.g.vimtex_compiler_progname = 'nvr'
            vim.g.vimtex_compiler_latexmk = {
                options = {
                    '-pdf',
                    '-file-line-error',
                    '-synctex=1',
                    '-interaction=nonstopmode',
                    '-shell-escape'
                }
            }
        end
    },
    {
        'evesdropper/luasnip-latex-snippets.nvim'
    }
}

return M
