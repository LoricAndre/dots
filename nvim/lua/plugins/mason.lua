local dap = require 'dap'
local dapui = require 'dapui'
local coq = require 'coq'
local null_ls = require 'null-ls'

local nmap = require 'utils'.nmap
local vmap = require 'utils'.vmap

local mason_path = vim.fn.stdpath('data') .. '/mason/'

local config = {
  lsp = {
    servers = {
      'sumneko_lua',
      'bashls',
      'pyright',
      'clangd',
      'rust_analyzer',
      'gopls',
      'tsserver',
    },
    setup = function()
      local on_attach = function()
        require 'virtualtypes'.on_attach()
        nmap { 'K', vim.lsp.buf.hover }
        nmap { '<leader>ld', vim.lsp.buf.definition }
        nmap { '<leader>lD', vim.lsp.buf.declaration }
        nmap { '<leader>li', vim.lsp.buf.implementation }
        nmap { '<leader>lt', vim.lsp.buf.type_definition }
        nmap { '<leader>lr', vim.lsp.buf.references }
        nmap { '<leader>lR', vim.lsp.buf.rename }
        nmap { '<leader>ls', vim.lsp.buf.document_symbol }
        nmap { '<leader>lS', vim.lsp.buf.workspace_symbol }
        nmap { '<leader>la', vim.lsp.buf.code_action }
        vmap { '<leader>la', vim.lsp.buf.code_action }
        nmap { '<leader>lf', function() vim.lsp.buf.format { async = true } end }
        vmap { '<leader>lf', function() vim.lsp.buf.format { async = true } end }
      end
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      require'mason-lspconfig'.setup_handlers {
        function(server)
          require 'lspconfig'[server].setup(coq.lsp_ensure_capabilities {
          on_attach = on_attach,
          capabilities = capabilities
        })
        end
      }
    end
  },
  dap = {
    adapters = {
      cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = mason_path .. 'bin/OpenDebugAD7'
      }
    },
    configurations = {
      cpp = {
        name = 'Launch file',
        type = 'cppdbg',
        request = 'launch',
        program = function()
          if vim.fn.filereadable(vim.fn.expand('%:r') .. '.g') then
            return vim.fn.expand('%:r') .. '.g'
          else
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
      }
    },
    setup = function()
      vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
      nmap { '<F5>', function()
        vim.g.last_dbg_buf = vim.api.nvim_get_current_buf()
        require 'dapui'.open()
        require 'dap'.continue()
      end }

      nmap { '<F17>', function()
        vim.api.nvim_set_current_buf(vim.g.last_dbg_buf)
        require 'dapui'.close()
        require 'dap'.terminate()
      end }
      nmap { '<F6>', require 'dap'.toggle_breakpoint }
      nmap { '<F7>', require 'dap'.step_over }
      nmap { '<F8>', require 'dap'.step_into }

      return dapui.setup()
    end
  },
  ['null-ls'] = {
    sources = {
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.code_actions.gitsigns,
      null_ls.builtins.code_actions.ltrs,
      null_ls.builtins.code_actions.refactoring,
      null_ls.builtins.diagnostics.checkmake,
      null_ls.builtins.diagnostics.chktex,
      null_ls.builtins.diagnostics.commitlint,
      null_ls.builtins.diagnostics.cppcheck,
      null_ls.builtins.diagnostics.cpplint,
      null_ls.builtins.diagnostics.jsonlint,
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.vulture,
      null_ls.builtins.diagnostics.zsh,
      null_ls.builtins.diagnostics.yamllint,
      null_ls.builtins.formatting.autopep8,
      null_ls.builtins.formatting.clang_format,
      null_ls.builtins.formatting.jq,
      null_ls.builtins.formatting.latexindent,
      null_ls.builtins.formatting.lua_format,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.yamlfmt,
    },
  },
  mason = {
    install_root_dir = mason_path,
  }
}

require 'mason'.setup(config.mason)
require 'mason-lspconfig'.setup {
  ensure_installed = config.lsp.servers,
  automatic_installation = true
}
config.lsp.setup()
config.dap.setup()
require 'mason-nvim-dap'.setup {
    automatic_setup = true,
}
require 'mason-nvim-dap'.setup_handlers()
null_ls.setup(config['null-ls'])
