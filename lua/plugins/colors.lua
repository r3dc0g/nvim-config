local M = {
    'sainnhe/everforest',
    as = 'everforest',
    config = function()
        color = color or "everforest"
        vim.cmd.colorscheme(color)
        vim.g.everforest_background = "hard"

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NornmalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNCFloat", { bg = "none" })
    end
}

return M


