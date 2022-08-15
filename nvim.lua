local settings = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    cmdheight = 1, -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0, -- so that `` is visible in markdown files
    fileencoding = "utf-8", -- the encoding written to a file
    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    showmode = true, -- we don't need to see things like -- INSERT -- anymore
    pumheight = 10, -- pop up menu height
    showtabline = 2, -- always show tabs
    smartcase = true, -- smart case
    smartindent = true, -- make indenting smarter again
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = false, -- creates a swapfile
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 250, -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true, -- enable persistent undo
    updatetime = 300, -- faster completion (4000ms default)
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert 2 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = true, -- set relative numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    signcolumn = "number", -- always show the sign column, otherwise it would shift the text each time
    scrolloff = 8, -- is one of my fav
    sidescrolloff = 8,
    wrap = false,
}

for k, v in pairs(settings) do
    vim.opt[k] = v
end

local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- map navigation
keymap('n', '<c-h>', '<c-w>h', { noremap = true })
keymap('n', '<c-j>', '<c-w>j', { noremap = true })
keymap('n', '<c-k>', '<c-w>k', { noremap = true })
keymap('n', '<c-l>', '<c-w>l', { noremap = true })
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd [[packadd packer.nvim]]
end


require('packer').startup(function(use)
    -- file explorer
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "akinsho/toggleterm.nvim"
    use 'navarasu/onedark.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use { 'phaazon/hop.nvim' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

require("nvim-tree").setup()
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

toggleterm.setup({
    size = 20,
    open_mapping = [[<c-t>]],
})

require('telescope').setup()
vim.api.nvim_set_keymap('n', '<C-p>',
    "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    { noremap = true })

require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran'
}

local keymap = vim.api.nvim_set_keymap

-- map navigation
vim.api.nvim_set_keymap('n', 's', ':HopChar1<CR>', { noremap = true })
