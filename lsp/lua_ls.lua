local on_attach = require('nvim_baron.lsp')

return {
	on_attach = on_attach,
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = {{'.luarc.json', '.luarc.jsonc'}, '.git'},
    capabilities = require('blink.cmp').get_lsp_capabilities()
}


