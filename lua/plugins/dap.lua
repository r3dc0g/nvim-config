local M = {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    init = function()
        local dap = require('dap')

        vim.keymap.set('n', '<leader>B', dap.toggle_breakpoint, { noremap = true })
        vim.keymap.set('n', '<leader>k', dap.step_back, { noremap = true })
        vim.keymap.set('n', '<leader>l', dap.continue, { noremap = true })
        vim.keymap.set('n', '<leader>J', dap.step_over, { noremap = true })
        vim.keymap.set('n', '<leader>j', dap.step_into, { noremap = true })
        vim.keymap.set('n', '<leader>h', dap.step_out, { noremap = true })
    end
}

return M
