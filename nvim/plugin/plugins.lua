local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

local plugins_spec = {
  { 'wbthomason/packer.nvim' },
  { 'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      { 'nvim-lua/plenary.nvim', opt = false },
      'nvim-telescope/telescope-media-files.nvim',
      'cljoly/telescope-repo.nvim',
      'gbrlsnchs/telescope-lsp-handlers.nvim',
      'rcarriga/nvim-notify',
      'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function() require 'plugins.telescope' end,
    rocks = {
      'openssl',
      'lua-http-parser'
    },
  },
  { 'akinsho/toggleterm.nvim',
    config = function() require 'plugins.toggleterm' end
  },
  { 'goolord/alpha-nvim',
    config = function() require 'plugins.alpha' end
  },
  { 'numToStr/Comment.nvim',
    config = function() require 'plugins.comment' end
  },
  { 'LudoPinelli/comment-box.nvim',
    config = function() require 'plugins.comment-box' end
  },
  { 'ms-jpq/coq_nvim',
    branch = 'coq',
    requires = {
      { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
      { 'ms-jpq/coq.thirdparty', branch = '3p' },
    },
    run = ':COQdeps',
    config = function() require 'plugins.coq' end
  },
  { 'feline-nvim/feline.nvim',
    config = function() require 'plugins.feline' end,
    requires = {
      'kyazdani42/nvim-web-devicons',
      'lewis6991/gitsigns.nvim',
    },
  },
  { 'lukas-reineke/indent-blankline.nvim',
    config = function() require 'plugins.indent-blankline' end
  },
  { 'nvim-treesitter/nvim-treesitter',
    config = function() require 'plugins.treesitter' end,
    run = ':TSUpdate'
  },
  { 'neovim/nvim-lspconfig',
    config = function() require 'plugins.lsp' end,
    requires = {
      'jubnzv/virtual-types.nvim',
      'kosayoda/nvim-lightbulb',
      'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
      'williamboman/nvim-lsp-installer'
    },
  },
  { 'folke/persistence.nvim',
    config = function() require 'plugins.persistence' end
  },
  { 'sidebar-nvim/sidebar.nvim',
    config = function() require 'plugins.sidebar' end
  },
  { 'michaelb/sniprun',
    config = function() require 'plugins.sniprun' end,
    run = 'bash ./install.sh'
  },
  { 'renerocksai/telekasten.nvim',
    requires = {
      'renerocksai/calendar-vim'
    },
    config = function() require 'plugins.telekasten' end
  },
  { 'lewis6991/impatient.nvim' },
  { 'ggandor/lightspeed.nvim' },
  { 'neomake/neomake' },
  { 'shaunsingh/nord.nvim' },
  { 'tiagovla/tokyodark.nvim' },
  { 'folke/tokyonight.nvim' },
  { 'ygm2/rooter.nvim' },
  { 'catppuccin/nvim', as = 'catppuccin' },
  { 'RRethy/nvim-base16' },
  { 'shaunsingh/seoul256.nvim' },
  { 'nekonako/xresources-nvim' },
}
return require 'packer'.startup(function(use)
  for _, spec in ipairs(plugins_spec) do
    use(spec)
  end
end)
