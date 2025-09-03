local  on_attach = require('nvim_baron.lsp')

return {
	on_attach = on_attach,
	cmd = { 'pylsp' },
	filetypes = { 'python' },
	root_markers = {{ 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipefile'},  '.git'}
}
