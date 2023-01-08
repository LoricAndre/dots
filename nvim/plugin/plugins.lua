local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

local plugins_spec = {
    {'wbthomason/packer.nvim'}, {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', {'nvim-lua/plenary.nvim', opt = false},
            'nvim-telescope/telescope-media-files.nvim',
            'cljoly/telescope-repo.nvim',
            'gbrlsnchs/telescope-lsp-handlers.nvim', 'rcarriga/nvim-notify',
            'nvim-telescope/telescope-file-browser.nvim',
            'nvim-telescope/telescope-ui-select.nvim'
        },
        config = function() require 'plugins.telescope' end,
        rocks = {'openssl', 'lua-http-parser'}
    }, {
        'akinsho/toggleterm.nvim',
        config = function() require 'plugins.toggleterm' end
    },
    {'numToStr/Comment.nvim', config = function() require 'plugins.comment' end},
    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires = {
            {'ms-jpq/coq.artifacts', branch = 'artifacts'},
            {'ms-jpq/coq.thirdparty', branch = '3p'}
        },
        run = ':COQdeps',
        config = function() require 'plugins.coq' end
    }, {
        'feline-nvim/feline.nvim',
        config = function() require 'plugins.feline' end,
        requires = {'kyazdani42/nvim-web-devicons', 'lewis6991/gitsigns.nvim'}
    }, {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require 'plugins.indent-blankline' end
    }, {
        'nvim-treesitter/nvim-treesitter',
        config = function() require 'plugins.treesitter' end,
        run = ':TSUpdate'
    }, {
        'michaelb/sniprun',
        config = function() require 'plugins.sniprun' end,
        run = 'bash ./install.sh'
    }, {
        'williamboman/mason.nvim',
        config = function() require 'plugins.mason' end,
        requires = {
            'neovim/nvim-lspconfig', 'jubnzv/virtual-types.nvim',
            'kosayoda/nvim-lightbulb',
            'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
            'ThePrimeagen/refactoring.nvim',
            'williamboman/mason-lspconfig.nvim',
            'jose-elias-alvarez/null-ls.nvim', 'jayp0521/mason-null-ls.nvim',
            'rcarriga/nvim-dap-ui', 'mfussenegger/nvim-dap', "jayp0521/mason-nvim-dap.nvim",
        }
    }, {'lewis6991/impatient.nvim'}, {'ggandor/lightspeed.nvim'},
    {'shaunsingh/nord.nvim'}, {'tiagovla/tokyodark.nvim'},
    {'folke/tokyonight.nvim'}, {'ygm2/rooter.nvim'},
    {'catppuccin/nvim', as = 'catppuccin'}, {'RRethy/nvim-base16'},
    {'shaunsingh/seoul256.nvim'}, {'nekonako/xresources-nvim'}
}
return require'packer'.startup(function(use)
    for _, spec in ipairs(plugins_spec) do use(spec) end
end)
