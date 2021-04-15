local vim = vim
require'utils'

return {
  lsp = function()
    local lsp = require'lspconfig'
    lsp.clangd.setup{
      cmd = {"clangd", "--compile-commands-dir=<(echo '[{\"arguments\": \"-std=c++17\"}]')"}
    }
    lsp.cmake.setup{}
    lsp.html.setup{}
    lsp.jedi_language_server.setup{}
    lsp.jsonls.setup{}
    lsp.texlab.setup{}
    lsp.vimls.setup{}
    lsp.vuels.setup{}
    lsp.tsserver.setup{}
    lsp.sumneko_lua.setup{
      cmd = {"lua-language-server"}
    }
    lsp.rust_analyzer.setup{}
    lsp.bashls.setup{
      filetypes = {"sh", "bash", "zsh"}
    }
    map('n', '<leader>li', '<cmd>silent! lua vim.lsp.buf.implementation()<CR>', {})
    map('n', '<leader>lS', '<cmd>silent! lua vim.lsp.buf.signature_help()<CR>', {})
    map('n', '<leader>lt', '<cmd>silent! lua vim.lsp.buf.type_definition()<CR>', {})
    map('n', '<leader>lR', '<cmd>silent! lua vim.lsp.buf.rename()<CR>', {})
    map('n', '<leader>la', '<cmd>silent! lua vim.lsp.buf.code_action()<CR>', {})
    map('n', '<leader>ldn', '<cmd>silent! lua vim.lsp.diagnostic.goto_next()<CR>', {})
    map('n', '<leader>ldp', '<cmd>silent! lua vim.lsp.diagnostic.goto_prev()<CR>', {})
    map('n', '<leader>lf', '<cmd>silent! lua vim.lsp.buf.formatting()<CR>', {})

    -- Diags
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {
          spacing = 2,
          prefix = ''
        },
        signs = true,
      }
    )
    vim.cmd("sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=")
    vim.cmd("sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning linehl= numhl=")
    vim.cmd("sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=")
    vim.cmd("sign define LspDiagnosticsSignHint text=H texthl=LspDiagnosticsSignHint linehl= numhl=")
  end,

  jdtls = function()
    au("FileType", "java", [[lua require('jdtls').start_or_attach({
      cmd = {'java-lsp.sh'},
      init_options = {
        bundles = {
          vim.fn.glob("~/dotfiles/deps/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
        }
      }
    })]])
    au("fileType", "java", "lua require('jdtls').setup_dap()")
    local jdtls_ui = require'jdtls.ui'
    function jdtls_ui.pick_one_async(items, _, _, cb)
      require'lsputil.codeAction'.code_action_handler(nil, nil, items, nil, nil, nil, cb)
    end
  end
}
