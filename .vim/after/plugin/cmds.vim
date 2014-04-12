:au BufNewFile,BufRead *.html set ai
:AlignCtrl l:
" :nohlsearch

if has("gui_running")
    set background=dark
    setglobal cursorline
    set lines=63 columns=186
    set guifont=Inconsolata\ Medium\ 9
endif

" nnoremap $ :<c-u>call EndOfLine()<cr>
" nnoremap ; :
nnoremap <expr> $ "<right>$".((v:count>1)?((v:count-1).'h'):(''))
call motpat#Map(0, 'w', 'b', '\i\+\ze.\|$')

set ai
