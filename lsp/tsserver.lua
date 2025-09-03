local  on_attach = require('nvim_baron.lsp')

return{
	on_attach = on_attach,
	cmd = { 'tsserver' },  
	filetypes = { 'javascript',  'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
	root_markers = {{ 'package.json', 'tsconfig.json', 'jsconfig.json' }, '.git' }
}
