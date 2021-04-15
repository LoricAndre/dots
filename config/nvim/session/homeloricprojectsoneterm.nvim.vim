let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/oneterm.nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/projects/oneterm.nvim
badd +16 lua/oneterm/term.lua
badd +0 term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm
argglobal
%argdel
$argadd ~/projects/oneterm.nvim
edit lua/oneterm/term.lua
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '2resize ' . ((&lines * 31 + 31) / 62)
exe 'vert 2resize ' . ((&columns * 175 + 117) / 234)
argglobal
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
let s:l = 16 - ((15 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 05|
lcd ~/projects/oneterm.nvim
wincmd w
argglobal
if bufexists("term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm") | buffer term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm | else | edit term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm | endif
if &buftype ==# 'terminal'
  silent file term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm
endif
balt term://~/projects/oneterm.nvim//176930:/usr/bin/zsh\ &&\ true\ \|\ true\ \|\ tee\ /tmp/oneterm
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 02|
lcd ~/projects/oneterm.nvim
wincmd w
2wincmd w
exe '2resize ' . ((&lines * 31 + 31) / 62)
exe 'vert 2resize ' . ((&columns * 175 + 117) / 234)
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
