-- Ensure that LSP is enabled
vim.api.nvim_command([[set termguicolors]])
vim.api.nvim_command([[set hidden]])

local cmp = require('cmp')

cmp.setup({
	mapping = {
		['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	},
})
