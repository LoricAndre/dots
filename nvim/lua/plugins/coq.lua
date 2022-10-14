local vim = vim
local imap = require'utils'.imap

vim.g.coq_settings = {
  ['keymap.recommended'] = false,
  auto_start = true
}

imap { '<Esc>', 'pumvisible() ? "\\<C-e><Esc>" : "\\<Esc>"', expr = true }
imap { '<C-c>', 'pumvisible() ? "\\<C-e><C-c>" : "\\<C-c>"', expr = true }
imap { '<BS>', 'pumvisible() ? "\\<C-e><BS>"  : "\\<BS>"', expr = true }
imap { '<CR>', 'pumvisible() ? (complete_info().selected == -1 ? "\\<C-e><CR>" : "\\<C-y>") : "\\<CR>"', expr = true }
imap { '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', expr = true }
imap { '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<BS>"', expr = true }
imap { '<C-k>', '<C-h>' }
