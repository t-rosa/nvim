require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").tsserver.setup {
	capabilities = capabilities,
}

require("lspconfig").tailwindcss.setup {
	capabilities = capabilities,
}

require("lspconfig").html.setup {
	capabilities = capabilities,
}

require("lspconfig").cssls.setup {
	capabilities = capabilities,
}

require("lspconfig").prismals.setup {
	capabilities = capabilities,
}

require("lspconfig").sumneko_lua.setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}

require("lspconfig").emmet_ls.setup {
	capabilities = capabilities,
}
