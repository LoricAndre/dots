vim.cmd('packadd packer.nvim')

require('packer').startup(function()
  local use = use
  -- packer
  use {'git@github.com:wbthomason/packer.nvim', opt = true}

  -- Misc utilities
  use 'git@github.com:tpope/vim-commentary' -- comments
  use 'git@github.com:tpope/vim-obsession' -- Session management
  use 'git@github.com:ryanoasis/vim-devicons' -- Icons
  use {'LoricAndre/oneterm', branch = 'dev', config = function() require'plugins.misc'.oneterm() end}
  use 'git@github.com:lilydjwg/colorizer' -- Hilight hex code with color #000
  use {'git@github.com:tmsvg/pear-tree', config = function() require'plugins.misc'.pearTree() end}
  use {'git@github.com:Shougo/echodoc.vim', config = function() vim.g["echodoc#enable_at_startup"] = -1 end}
  use {'kkoomen/vim-doge', run = ":call doge#install()", config = function() vim.g.doge_mapping = '<Leader>g' end}
  use {'hrsh7th/vim-vsnip', config = function() require'plugins.misc'.vsnip() end, requires = 'hrsh7th/vim-vsnip-integ'}
  use {'SirVer/ultisnips', requires = 'honza/vim-snippets', config = function() require'plugins.misc'.ultisnips() end}
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua', config = function() require'plugins.misc'.indent() end}

  -- Colorschemes
  use 'jsit/disco.vim'

  -- Neovim 5.0 goodness
  -- Treesitter
  use {'git@github.com:nvim-treesitter/nvim-treesitter', config = function() require'plugins.treesitter'() end}
  use {'git@github.com:nvim-treesitter/completion-treesitter'}
  -- LSP
  use {'git@github.com:neovim/nvim-lspconfig', config = function() require'plugins.lsp'.lsp() end}
  use {'mfussenegger/nvim-jdtls', config = function() require'plugins.lsp'.jdtls() end}

  -- Completion
  use {'hrsh7th/nvim-compe', config = function() require'plugins.completion'.compe() end}
  use {'tzachar/compe-tabnine'}
end)
