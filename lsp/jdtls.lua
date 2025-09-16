local on_attach = require('nvim_baron.lsp')

return {
	on_attach = on_attach,
	cmd = { 'jdtls' },
	filetypes = { 'java' },
	root_markers = {{'mvnw', 'gradlew', 'pom.xml', 'build.gradle'}, '.git'},
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
