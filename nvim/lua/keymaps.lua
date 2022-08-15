local keymap = vim.api.nvim_set_keymap

-- map navigation
keymap('n', '<c-h>', '<c-w>h', { noremap = true })
keymap('n', '<c-j>', '<c-w>j', { noremap = true })
keymap('n', '<c-k>', '<c-w>k', { noremap = true })
keymap('n', '<c-l>', '<c-w>l', { noremap = true })

keymap('n', 'H', ':bprevious<CR>', { noremap = true })
keymap('n', 'L', ':bnext<CR>', { noremap = true })
keymap('n', 'gs', '<cmd>Telescope live_grep theme=ivy<cr>', { noremap = true })
-- t = { "", "Find Text" },
