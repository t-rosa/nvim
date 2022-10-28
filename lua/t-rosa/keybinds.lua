local nnoremap = require("t-rosa.keymap-util").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
