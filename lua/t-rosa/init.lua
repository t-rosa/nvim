require("t-rosa.options")
require("t-rosa.keybinds")
require("t-rosa.packer")
require("t-rosa.lsp")

require'lspconfig'.tsserver.setup{
	on_attach = function()
		vim.keymap.set("n", "gh", vim.lsp.buf.hover, {buffer = 0})
	end
}
