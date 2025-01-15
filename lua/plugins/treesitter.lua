local M = {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "cpp", "diff", "lua", "latex", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "rust", "markdown", "python", "sql" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
}

return M
