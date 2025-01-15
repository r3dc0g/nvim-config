local M = {
	'nvim-tree/nvim-tree.lua',
	config = function()
		require("nvim-tree").setup({
			    on_attach = function(bufnr)
				    local api = require("nvim-tree.api")

			local function opts(desc)
			    return {
			    desc = "nvim-tree: " .. desc,
			    buffer = bufnr,
			    noremap = true,
			    silent = true,
			    nowait = true
			    }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "t", api.node.open.tab, opts("Tab"))
		    end,
		    actions = {
			open_file = {
			    quit_on_open = true,
			},
		    },
			    sort = {
			sorter = "case_sensitive",
				},
		    view = {
			width = 30,
			relativenumber = true,
		    },
		    renderer = {
			group_empty = true,
		    },
				filters = {
				    dotfiles = true,
				    custom = {
					"node_modules/.*",
				    },
				},
			})

		if vim.fn.argc(-1) == 0 then
		    vim.cmd("NvimTreeFocus")
		end
	end,
	init = function ()
		vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)
	end
}

return M
