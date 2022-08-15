require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran'
}

local keymap = vim.api.nvim_set_keymap

-- map navigation
vim.api.nvim_set_keymap('n', 's', ':HopChar1<CR>', { noremap = true })
