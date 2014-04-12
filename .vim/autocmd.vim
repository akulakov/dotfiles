"
" html ^- &#8212;     - html em dash, long
" html,php ^ah        - html a href link tag
" html,php ^p         - html paragraph tag
" html,php ^d         - html div tag
" html,php ^im        - html IMG tag
" html,php ^id        - html tag id attribute
" html,php ^c         - html tag class attrib
" html,php ^B         - html tag bgcolor attrib
" html,php ^b         - html BR tag
" html,php ^t         - html Table,TR,TD tags
" html,php ^al        - html tag align attribute
" emails   \a         - simple email sig
" emails   alt-z      - save and quit from insert; email
" emails   Enter      - save and quit; email
" emails   z          - gqq, format current line; email
" emails   Alt-s      - insert quotation sig, both normal and insert modes
"
" rst ^ah http://www. - start url entry
" F5                  - execute command window cmd & return; run, cmd
"
"endlist
" ---------------------------------------------------------------------------------------------

" au GUIEnter * winpos 1450 0
au BufEnter * set relativenumber

augroup CursorLine
    au!
    au BufEnter * :sleep 50m | hi CursorLine guibg=#073642
augroup END

augroup ColorMode
    au!
    au BufNewFile,BufRead,BufEnter * call ApplyColorMode()
augroup END

augroup JumpLast
    " When editing a file, always jump to the last known cursor position.
    au!
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" |
augroup END

augroup Html
    au!
    au BufNewFile,BufRead *.html,*.css inoremap <buffer> { {  }<left><left>
    au BufNewFile,BufRead *.html nnoremap <buffer> <M-k> mz:m-2<CR>`z
    au BufNewFile,BufRead *.html nnoremap <buffer> <M-j> mz:m+<CR>`z
    au BufNewFile,BufRead *.html inoremap <buffer> ^- &#8212;
    au BufNewFile,BufRead *.html setlocal indentkeys= fo-=c filetype=htmldjango " vim gets confused by django template markup
    au BufNewFile,BufRead *.html vnoremap <buffer> M <esc>'<O{# {{{ #}<esc>'>o{# }}} #}<esc>'<
    au BufRead            *.html setlocal expandtab
augroup END

au BufRead *.vim setlocal expandtab
au BufNewFile,BufRead *.txt nnoremap <buffer> <Leader>i :call ToggleFold()<CR>
au BufNewFile,BufRead inoremap < <><left>
au BufNewFile,BufEnter *.txt set filetype=text

au BufNewFile,BufRead,BufEnter *.txt set ai

au BufNewFile,BufRead *.pyw,*.html,*.htm,*.txt,*.py set textwidth=98

augroup Python
    au!
    au BufNewFile,BufRead *.py,*.pyw nnoremap <buffer> <Leader>i :call ToggleFold("py")<CR>
    au BufNewFile,BufRead *.py,*.pyw inoremap <buffer> <m-o> .
    " au BufNewFile,BufRead *.py,*.pyw inoremap <buffer> - _
    " au BufNewFile,BufRead *.py,*.pyw inoremap <buffer> _ -
    au BufNewFile,BufRead *.py,*.pyw cnoremap <buffer> - _
    au BufNewFile,BufRead *.py,*.pyw cnoremap <buffer> _ -
    au BufNewFile,BufRead *.py,*.pyw inoremap <buffer> _ -
    au BufNewFile,BufRead *.py,*.pyw inoremap - <c-r>=synIDattr(synIDtrans(synID(line("."),col(".")-1,1)),"name")=="String" ? '-' : '_'<cr>
    au BufNewFile,BufRead *.py,*.pyw inoremap - <c-r>=synIDattr(synIDtrans(synID(line("."),col(".")-1,1)),"name")=="Comment" ? '-' : '_'<cr>
    au BufNewFile,BufRead *.py,*.pyw inoremap <buffer> <m-f> -
    au BufNewFile,BufRead *.py,*.pyw cnoremap <buffer> <m-f> -
    au BufNewFile,BufRead,BufEnter *.py,*.pyw syntax sync minlines=80 | setlocal formatoptions=cqn
    au BufNewFile,BufRead,BufEnter *.py,*.pyw setlocal indentkeys-=<:> expandtab foldcolumn=3
    au BufNewFile,BufRead,BufEnter *.py,*.pyw hi LoginRequired guifg=#575757
    au BufNewFile,BufRead *.py,*.pyw vnoremap <buffer> M <esc>'<O# {{{<esc>'>o# }}}<esc>'<
    au BufWritePre *.py call TrimEndLines()
    au BufNewFile,BufRead *.py,*.pyw setlocal foldmethod=expr foldexpr=GetPythonFoldBest(v:lnum) foldtext=PyFoldText()
    au BufNewFile,BufRead *.py,*.pyw normal zz
    au BufNewFile,BufRead *.py,*.pyw setlocal foldmethod=manual
    " au BufNewFile,BufRead *.py,*.pyw :call ToggleFold()<CR>
augroup END

augroup Javascript
    au!
    au BufNewFile,BufRead *.js inoremap <buffer> <m-1> <esc>F lviWyiconsole.log("<c-r>": "<space>+<space><end>);<esc>
augroup END

au CmdwinEnter * map <buffer> <F5> <CR>q:

" autocomplete script causes issues in cmd win
au CmdwinEnter * silent! iunmap <esc>

au BufRead,BufEnter $VIMRUNTIME/doc/*.txt nnoremap <buffer> <cr> <c-]>

au BufRead filelist nnoremap <buffer> <cr> :call OpenCloseOrig()<cr>

augroup Email
    au!
    au BufNewFile,BufEnter /tmp/*.eml nnoremap <buffer> \a A  - Andrei<esc>
    au BufNewFile,BufEnter /tmp/*.eml nnoremap <buffer> <cr> :wqa<esc>
    au BufNewFile,BufEnter /tmp/*.eml nnoremap <buffer> z gqq
    au BufNewFile,BufEnter /tmp/*.eml nnoremap <buffer> <m-s> o<cr><cr><esc>:r!~/mypython/sig.py<CR>
    au BufNewFile,BufEnter /tmp/*.eml inoremap <buffer> <m-s> <cr><cr><esc>:r!~/mypython/sig.py<CR>
    au BufNewFile,BufEnter /tmp/*.eml inoremap <buffer> <m-z> <esc>:wqa<cr>
    au BufNewFile,BufEnter /tmp/*.eml vnoremap <buffer> ' I><space><esc>
augroup END

" nnoremap \av O<CR>   -ak<CR><CR><BS>-- <CR> Python plugins for vim: outliner, todo list, project manager, calendar,<CR>expenses tracker, sortable table, and more \| http://lightbird.net/pysuite/<esc>
" nnoremap \ad O<CR>   -ak<CR><CR><BS>-- <CR> Django by Example Tutorials: http://lightbird.net/dbe/<CR>Pysuite - Python Vim plugins: http://lightbird.net/pysuite/<CR><esc>

" Mappings for zsh command list editor
" following mapping command:  "pyy gg dG "pP j dd ZZ'  (del all but current line and ZZ)
au BufNewFile,BufEnter /tmp/zsh* nnoremap <cr> "pyyggdG"pPjddZZ
" mapping to delete all 1-4 char commands
au BufNewFile,BufEnter /tmp/zsh* :normal G|:nnoremap D :g/^.\{1,4\}$/d<CR>
" au BufLeave * let b:winview = winsaveview()
" au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

" au BufLeave * normal mjHmu
" au BufEnter * if(exists('@j') && exists('@u')) | normal `uzt`j | endif
