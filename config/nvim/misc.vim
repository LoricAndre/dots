" Options buggy in lua
set expandtab
set softtabstop=2
set shiftwidth=2

function BigComment()
    let text = input("Comment: ")
    let end = repeat('~', 79 - len(text) - len(&commentstring))
    let cmd = 'o' . text . ' ' . end . ':Commentary'
    return cmd
endfunction
nnoremap <expr> BC BigComment()

command! -nargs=1 FullPush !git add $(pwd) && git commit -m <f-args> && git push
command! -nargs=* G lua require'git'(<f-args>)
command! -nargs=* Scp lua require'scp'.scp(<f-args>)

" HLSearch alt
set wildchar=<C-z>
cnoremap <expr> <Tab> getcmdtype() =~ "[/?]" ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() =~ "[/?]" ? "<C-t>" : "<C-z>"


augroup hlsearch | au!
    au CmdlineEnter /,\? :set hlsearch
    au CmdlineLeave /,\? :set nohlsearch
augroup end

set shortmess +=c
