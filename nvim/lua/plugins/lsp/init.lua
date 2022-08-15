require "nvim-lsp-installer".setup {}
require "plugins.lsp.cmp"
require "plugins.lsp.configs"
require "plugins.lsp.diagnostic"

-- require 'lspconfig'.pyright.setup {}
-- require'lspconfig'.gopls.setup{}
-- require'lspconfig'.golangci_lint_ls.setup{}
--
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
