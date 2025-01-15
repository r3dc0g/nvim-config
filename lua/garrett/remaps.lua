vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- Compile LaTeX
vim.keymap.set("n", "<leader>c", ":VimtexCompile<CR>")

-- Remap j and k to gj and gk
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Toggle SpellCheck
vim.keymap.set("n", "<leader>o", ":set spell! spelllang=en_us<CR>")
