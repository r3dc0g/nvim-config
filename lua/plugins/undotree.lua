local M = {
  'mbbill/undotree',
  init = function ()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    vim.opt.undofile = true
  end
}

return M

