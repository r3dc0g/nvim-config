local M = {
    'ldelossa/nvim-dap-projects',
    init = function()
        require('nvim-dap-projects').search_project_config()
    end
}

return M

