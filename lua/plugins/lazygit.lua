local M = {
	'kdheepak/lazygit.nvim',
	init = function ()
		vim.keymap.set("n", "<leader>g", vim.cmd.LazyGit, { noremap = true, silent = true })
	end
}

return M

