local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<leader>e', "<cmd>Ex<CR>", opts)
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts)
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", opts)
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", opts)

-- LSP
vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set('n', 'gh', "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
vim.keymap.set('n', 'ga', "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
vim.keymap.set('n', '<leader>r', "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
