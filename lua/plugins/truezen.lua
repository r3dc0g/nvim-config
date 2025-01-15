local M = {
	'pocco81/true-zen.nvim',
	init = function ()
        local truezen = require('true-zen')
		vim.keymap.set("n", "<leader>f", truezen.minimalist, { noremap = true })
	end
}

return M
