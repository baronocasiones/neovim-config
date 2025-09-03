vim.lsp.enable('lua_ls')
vim.lsp.enable('tsserver')
vim.lsp.enable('pylsp')

return function(client, bufnr)
	local opts = { noremap=true, silent=true, buffer=bufnr }

	if client:supports_method('textDocument/completion') then
		vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
		vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
		vim.keymap.set('i', '<C-c>', function() 
			vim.lsp.completion.get()
		end, { buffer = bufnr })
	end

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)  -- Go to definition
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts) -- Go to declaration
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- Go to implementation
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts) -- Go to references
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- Hover documentation
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Signature help
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- Rename symbol
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Code action
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- Diagnostics navigation
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- Diagnostics navigation
	vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts) --  Show diagnostics in floating window
	vim.keymap.set('n', '<leader>f', function()  
		vim.lsp.buf.format { async = true }
	end, opts)  -- Format code
end


