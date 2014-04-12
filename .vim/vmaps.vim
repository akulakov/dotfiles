" m     - copy to visual clipboard; yank, visual
" Z     - copy to 'z' register; yank, visual
" .     - normal . (repeat)
" \s    - email [snip]; visual
" \z    - paste from z register; over
" '     - comment with '>'; visual, quote, email
" ,s    - Sum, in pyvim.vim; add, numbers
" ,=    - align by equal sign, line up
" ,:    - align by semicolon, line up
" ,f    - fold all except for selection; everything, hide
" \e    - expand function argument to two lines; 2, refactor
" \E    - contract function argument to one line; 1, refactor, reverse of expand
" Enter - extract part of line to a new line
" L     - select current line without newline
" S     - substitute in selection, change, replace
"
" alt-w - add word boundaries to search; insert, \<\>, in search and input modes
"
" omap F - function omap
" omap T - html tag omap
"
"endlist
" Available: q  ABCDEFGHIJKLMNOPQRTUVWXYZ
" Available w/leader: abcdeghijklnopqrstuvwxyz  ABCDEFGHIJKLMNOPQRSTUVWXYZ
"
" vnoremap H :!e:\python24\Scripts\pygmentize.exe -f html -l python<CR>
" C comment visual block
" vnoremap -C xko/*<CR>*/<esc>P
" double quote selected text
" vnoremap ' "txi""<left><C-r>t<esc>
" bracket selected text
" vnoremap ( "txi()<left><C-r>t<esc>

" vnoremap ' "zy:call Pscreen()<cr>

" fold all except for selection: <esc> zE '> me '< k Vgg zf 'e j VG zf
vnoremap ,f <esc>zE'>me'<kVggzf'ejVGzf

vnoremap <silent> . :normal .<cr>

vmap <Leader>1 s˙
vmap <Leader>2 sˑ

vnoremap S :s///g<left><left><left>
vnoremap <Leader>= :Align =<cr>
vnoremap <Leader>: :Align :<cr>
vnoremap Z "zy
vnoremap m "+y
vmap ) s)
vmap ( s)i
vnoremap $ $h
vnoremap A :Align -<cr>
vnoremap y y`[
vnoremap \s c[snip]<esc>
vnoremap \z "zp

vnoremap <m-e> /^\s*def<cr><esc>:nohl<cr>gv
vnoremap <Leader>e ?^\s*def<cr><esc>:nohl<cr>gv
vnoremap <cr> xi<cr><cr><up><esc>pk:s/\s\+$//g<cr>j^i<tab>
vnoremap \e cx<up><end><cr>x = <esc>pj
vnoremap \E x<down>$"_di)P<up>dd
vnoremap L ^o$h
vnoremap M <esc>'<O{{{<esc>'>o}}}<esc>

" ===Command mode================================================================================
cnoremap <m-y> <S-Left>
cnoremap <m-u> <S-Right>
cnoremap <c-h> <Left>
cnoremap <c-l> <Right>
cnoremap <m-h> <Left><Left><Left><Left>
cnoremap <m-l> <Right><Right><Right><Right>
cnoremap <m-w> \<\><Left><Left>
lnoremap <m-w> \<\><Left><Left>
cnoremap <s-tab> -
cnoremap <m-f> _
" cnoremap _ -
" cnoremap - _

" == Omaps ======================================================================================
onoremap <silent> F :<C-U>normal! 0f(hviw<CR>
onoremap <silent> T :<C-U>normal! %v%<CR>
