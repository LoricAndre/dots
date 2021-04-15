let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +31 lua/fzterm/init.lua
badd +28 lua/fzterm/main.lua
badd +1 ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim
badd +1 README.md
badd +1 split\ \'README.md\'
badd +1 edit\ \'README.md\'
badd +27 lua/fzterm/utils.lua
argglobal
%argdel
$argadd ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim
edit lua/fzterm/utils.lua
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 116 + 117) / 234)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 234)
argglobal
balt lua/fzterm/main.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 29 - ((28 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 0
lcd ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim
wincmd w
argglobal
if bufexists("~/.local/share/nvim/site/pack/packer/start/fzterm.nvim/lua/fzterm/init.lua") | buffer ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim/lua/fzterm/init.lua | else | edit ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim/lua/fzterm/init.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim/lua/fzterm/init.lua
endif
balt ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim/lua/fzterm/utils.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 103 - ((30 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 103
normal! 037|
lcd ~/.local/share/nvim/site/pack/packer/start/fzterm.nvim
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 116 + 117) / 234)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 234)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
