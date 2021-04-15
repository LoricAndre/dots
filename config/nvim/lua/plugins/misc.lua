require'utils'

return {
  -- Pear tree
  pearTree = function()
    vim.g.pear_tree_smart_openers = true
    vim.g.pear_tree_smart_closers = true
    vim.g.pear_tree_smart_backspace = true
  end,

  -- VSnip
  vsnip = function ()
    map('i', '<C-l>', 'vsnip#available(1)  ? "<Plug>(vsnip-expand-or-jump)" : compe#confirm()', {noremap = true, expr = true})
    map('s', '<C-l>', 'UltiSnips#CanJumpForwards() ? UltiSnips#JumpForwards() : vsnip#available(1)  ? "<Plug>(vsnip-expand-or-jump)" : compe#confirm()', {noremap = true, expr = true})
  end,

  ultisnips = function()
    vim.g.UltiSnipsExpandTrigger="<NUL>"
    vim.g.UltiSnipsJumpForwardTrigger="<C-l>"
    vim.g.UltiSnipsJumpBackwardTrigger="<C-k>"
  end,

  oneterm = function()
    map("n", "<leader>f", ":OneTerm files_or_git_files<CR>", {silent = true, noremap = true})
    map("n", "<leader>F", ":OneTerm files<CR>", {silent = true, noremap = true})
    map("n", "<leader>r", ":OneTerm rg<CR>", {silent = true, noremap = true})
    map("n", "<leader>a", ":OneTerm ag<CR>", {silent = true, noremap = true})
    map("n", "<leader>R", ":OneTerm ranger<CR>", {silent = true, noremap = true})
    map("n", "<leader>lr", ":OneTerm references<CR>", {silent = true, noremap = true})
    map("n", "<leader>ls", ":OneTerm symbols<CR>", {silent = true, noremap = true})
    map("n", "<leader>lw", ":OneTerm ws_symbols<CR>", {silent = true, noremap = true})
    map("n", "<leader>G", ":OneTerm git<CR>", {silent = true, noremap = true})
    map("n", "<leader>b", ":OneTerm buffers<CR>", {silent = true, noremap = true})
    map("n", "<leader>t", ':OneTerm term<CR>',  {silent = true, noremap = true})
    vim.g.oneterm_yank = true
    vim.g.oneterm_ignore = {".git/", "node_modules/"}
  end,

  indent = function()
    vim.g.indent_blankline_char_list = {'|', '¦', '┆', '┊'}
    vim.g.indent_blankilne_use_treesitter = true
    vim.g.indent_blankline_show_first_indent_level = false
    vim.g.indent_blankline_show_current_context = true
  end
}
