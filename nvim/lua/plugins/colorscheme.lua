vim.opt.background = "dark" -- or "light" for light mode

require("onedarker").setup()
require("nvim-treesitter.configs").setup {
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- disable = { "c", "rust" },

    additional_vim_regex_highlighting = false,
  },
}


-- vim.cmd([[colorscheme gruvbox]])
