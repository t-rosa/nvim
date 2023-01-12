local opts = { noremap = true, silent = true }

-- Panes navigation
vim.keymap.set('i', '<C-h>', '<C-\\><C-N><C-w>h', opts)
vim.keymap.set('i', '<C-j>', '<C-\\><C-N><C-w>j', opts)
vim.keymap.set('i', '<C-k>', '<C-\\><C-N><C-w>k', opts)
vim.keymap.set('i', '<C-l>', '<C-\\><C-N><C-w>l', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Vertical navigation
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('v', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('v', '<C-u>', '<C-u>zz', opts)

-- LSP
vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
vim.keymap.set('n', '<leader>gd', "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set('n', '<leader>gh', "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
vim.keymap.set('n', '<leader>ga', "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
vim.keymap.set('n', '<leader>r', "<cmd>lua vim.lsp.buf.rename()<cr>", opts)

-- Telescope
--[[ vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts) ]]
--[[ vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", opts) ]]
--[[ vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", opts) ]]

-- Explorer
--[[ vim.keymap.set('n', '<leader>e', "<cmd>NeoTreeFloatToggle<cr>", opts) ]]

-- Hop
vim.keymap.set('n', '<leader>hc', "<cmd>HopChar1<cr>", opts)

-- Text move up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
