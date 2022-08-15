return require("packer").startup(function(use)
    -- packer can manage itself
    use "wbthomason/packer.nvim"

    -- language server protocol
    --
    -- cài lsp bằng :LspInstall
    -- require("nvim-lsp-installer").setup {}
    use "williamboman/nvim-lsp-installer"
    -- với mỗi ngôn ngữ, kiểu file, cần 1 lsp, nó implement interface cho bởi cmp
    use "neovim/nvim-lspconfig"

    -- completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    -- buffer cmp
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'

    -- file explorer
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"

    -- search
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- indent guide
    use "lukas-reineke/indent-blankline.nvim"

    -- color scheme
    use "nvim-treesitter/nvim-treesitter"
    use "ellisonleao/gruvbox.nvim"
    use "lunarvim/onedarker.nvim"

    -- buffer & lua line
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }

    -- performance
    use "lewis6991/impatient.nvim"

    -- tools
    --
    -- comment
    use "numToStr/Comment.nvim"
    -- auto pair
    use "windwp/nvim-autopairs"
    --which key
    use "folke/which-key.nvim"
    -- easy motion
    use { 'phaazon/hop.nvim' }

    -- terminal
    use "akinsho/toggleterm.nvim"

    -- golang
    use "ray-x/go.nvim"



end)
