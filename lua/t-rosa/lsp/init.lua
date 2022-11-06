local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup({})
mason_lspconfig.setup({
    ensure_installed = {
        "sumneko_lua",
        "tsserver",
        "eslint",
        "tailwindcss",
        "html",
        "cssls",
        "dockerls",
        "yamlls",
        "prismals",
        "omnisharp",
        "jsonls",
        "emmet_ls"
    }
})

local config = {
	virtual_text = false,
	signs = {
		active = signs,
	},
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(config)

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").tsserver.setup {
	capabilities = capabilities,
}

require("lspconfig").eslint.setup {
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

require("lspconfig").omnisharp.setup {
	capabilities = capabilities,
}

require("lspconfig").jsonls.setup {
	capabilities = capabilities,
}

require("lspconfig").prismals.setup {
    capabilities = capabilities
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

require("lspconfig").dockerls.setup {
	capabilities = capabilities,
}

require("lspconfig").yamlls.setup {
	capabilities = capabilities,
}
