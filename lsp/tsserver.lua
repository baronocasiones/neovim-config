local  on_attach = require('nvim_baron.lsp')

return{
	on_attach = on_attach,
	cmd = { 'typescript-language-server' },  
	filetypes = { 'javascript',  'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
	root_markers = {{ 'package.json', 'tsconfig.json', 'jsconfig.json' }, '.git' },
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
