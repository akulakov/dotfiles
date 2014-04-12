"
"
" \g     - touch log, start xterm tailing log, run current file through python; tail -f, buffer
" ,k     - next class definition
" \k     - prev class definition
" ,o     - fold python comments and docstrings
" \f     - search python code, ignore comments and docstrings
" gk     - pYchecker

" ,n     - repeat python searchcode; Next
" K      - python help on word under cursor
" Alt-t  - :!!  Run/Repeat last shell command
" \e     - list python def / classes; functions
" ,p     - python run current buffer; file
" \p      - run python interpreter
" Alt-x  - delete buffer

" _E     - delete Empty lines
" _V     - vertically split window
" Alt-B  - toggle bufferlist plugin
" ,u     - go to link; follow
" ,f     - fuzzy find file; edit

" Ctrl-N - cd ~/links/
" _I     - find in open folds
" ^Tab   - Ctrl-^, previous buffer
" gx     - delete XHTML tag (if inside or on border); erase
" _M     - vim command list; cmd, open, edit, notes
" ,gs    - list of scripts; open, edit, notes

" ^P     - paste from clipboard
" _R     - list buffers and remove; delete
" ,l , m-r - :ls - list buffers
" \n     - toggle line numbers; :nu
" _H     - helpgrep words in any order; find, search
" \z     - paste from 'z' register
" ,gh    - run helptags on vim docs dir; add
" ,y     - run buffer through python, show in preview window (c-w,z); file

" ,j     - django syntax highlight; html
" _U     - align equal signs or comments; code, line up
" Alt-l  - :, colon, start command mode
" \q     - open all folds under cursor recursively; fully, current
" Ctrl-k - cycle to next window; c-w w
" \w     - open all folds; increase, fold level, zR
" \v     - close all folds; minimize, decrease, fold level, zM
" \h     - interactive search for vim commands (vimcmds.py v)

" ,gg    - grep word under cursor in current file (,G same but type pattern)
" k+/-   - next/prev quickfix error (+ctrl first/last), k* - focus curr. error
" _Z     - fold everything but the search pattern; find, all
" g7     - run python on current file; execute
" _Q     - insert quote signature; email, add, random, quotation
" \2     - toggle colour mode, hide comments, strings; color


" _O     - manual folding
" ,gx    - sync fromstart; fix syntax, highlight
" C-j j  - interactive vim command help
" ,z , m-z - python folding
" Alt-g  - find specific python def by pattern; function, search
" ,0     - find specific python class by pattern; search
" Alt-e  - next python def; function
" ,e     - previous python def; function
"
" gl     - insert empty line below (gL above); add, blank
"
" Enter  - /tmp/zsh keep and run current line; execute
" D      - /tmp/zsh delete short lines
"
" \r     - remote edit settings, no swap file, only complete in current file
" gc     - cd to current file's directory; cwd, pwd
"
"
" gy     - python notes; open, edit, outlines
" ,v     - edit vimrc
" Alt-0  - edit maps.vim
" \m     - edit finance text file; open, notes, balance, expenses
"
" _L, m-s - ls current working directory; show, list, !ls
" Alt+op - window smaller/larger; increase, decrease
"
" ,i     - toggle fold manual/indent
" _N     - Toggle NERDTree file browser
" Alt-j/k - move current line down/up
" Y      - yank to the end of current line; copy
" Space  - Go to screen line number; refresh
" ,h , m-i - hide current buffer
" \t     - del trailing spaces in current file
" ,w , c-s - write buffer to disk; save
" \s     - source current file; :so, buffer
" ,q     - :q, quit vim
" Alt-H  - help
"
" _A     - open cAlendar file, date
" gl     - add a blank line below current; insert, make, empty
" \x     - syntax on; :sy on
" ,f, m-f - toggle fold under cursor; za
" Alt-m/n - make vim window smaller / larger; increase, decrease
" Alt-d  - delete current line; dd, erase
" _B     - backup current file; bkup.py
" \d     - duplicate line; copy
" \a     - email signature; andrei
" \c, m-c - :cd
" \u, m-. - :cd .. , cd one directory level up
" Ctrl-h - previous window; c-w P, back (DISABLED, NOW next window)
" Alt-q  - format current paragraph; gqip
" _X     - maXimize current window; increase, size
" \o     - set gui font size; character
" Alt-v  - edit file; :e, load
" g1     - fix cursorline highlight color
" _T     - open todo list win; wtodo, buffer
" ga     - switch to window above; up
" g2     - del buffer, keep window layout; rm, remove, bdelete
" Q      - @q, run 'q' register, after qq command
" _dd    - delete line without saving to unnamed register; erase
" zff    - fold python defs and classes; outline
" \j     - project, switch to left window (usually vimject)
" _W     - :wqa, write all buffers and quit; exit, save
" gs     - vimp3 status
" g9     - django notes, outline
" \av    - email signature with vim pysuite links DISABLED
" \ad    - email signature with django by example links DISABLED
" g3     - edit lst.todo; buffer, list
" g4     - edit main.trak; tracking, project, buffer
" g5     - ToggleAcp, toggle auto complete popup; disable, enable
" g6     - delete line above; dd, erase, up
" \1,F5  - toggle pseudo code outline view; pcotl
" ,gq    - find next single-quoted string
" \5     - win layout with todo and time tracker; trak, split, divide
" ,b     - remind rare commands; list, cmds
" ,t     - todo outline, scratch, notes
" ,1     - insert highlight symbol, prepend, 1, one
" ,2     - insert highlight symbol, prepend, 2, two
" ,9     - visual select pasted; highlight
" ,7     - show current trak time; display, project, timesheet
" ,3     - top of screen and scroll down; zt
" ,4     - switch to buffer with models.py; edit, change, django
" ,5     - switch to buffer with views.py; edit, change, django
" F3     - go to brackets at the end; )), ]], find
" _"     - expand single line docstring to multi-line; convert, python
" \3     - close all folds except for current
" \4     - close window
" ,GS    - make session, mksession; write, save
" dD     - delete back to comma; arg
" ,gw    - toggle wrap setting; invwrap, invert
" C-j o  - only current window, close all other windows except for special ones (in pysuite.vim)
" C-j l  - fold to level given as count;
" ,r     - reminders; (in pysuite.vim)
" ,gf    - factor out function; refactor function call line into def with return line
 
"endlist
"===============================================================================================
" abcdefghijklmnopqrstuvwxyz
" Ctrl  - k
" Alt   -
" ,     - b 6
" g     - b n z  (gz something with folding?!)
" \     - \ 0679
" _     - A K, 012345679, _
"
" Available after ,g    - a b g i j t u x z  ABCDEFGHIJKLMNOPQRTUVWXYZ [and some others...]

" current syn group
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <down> 8<c-e>
nnoremap <up> 8<c-y>
nnoremap <Leader>gw :set invwrap<CR>
nnoremap ,GS :mksession! ~/.vim/session<CR>:wqa<CR>
nnoremap \4 :wincmd c<CR>
nmap \3 \vzozozo
nnoremap _" ^2f"a <esc>f"i<cr><cr><cr><up><up><esc>0DjA<tab>
nnoremap <F3> /)\+$\\|]\+$\\|$/s-1<CR>:nohl<CR>
vnoremap <F3> /)\+$\\|]\+$\\|$/s-1<CR><esc>:nohl<CR>gv

" nmap <Leader>gl :sp<CR>:sp<CR><c-w>jg3:setlocal winfixheight<CR>5<c-w>_<c-w>j
"     \ g4:setlocal winfixheight<CR>4<c-w>_

nmap \5 :sp<CR>:sp<CR><c-w>jg3:setlocal winfixheight<CR>5<c-w>_

nnoremap dD dF,
" nnoremap ,4 :s,\v(\w+)(\W*%#\W*)(\w+),\3\2\1\r,kgJ:nohl<CR>
nnoremap ,4 :b models.py<CR>
nnoremap ,5 :b views.py<CR>
nnoremap <ScrollWheelUp> <ScrollWheelUp>:call LineNums()<CR>
nnoremap <ScrollWheelDown> <ScrollWheelDown>:call LineNums()<CR>
nnoremap <C-ScrollWheelUp> <C-ScrollWheelUp>:call LineNums()<CR>
nnoremap <C-ScrollWheelDown> <C-ScrollWheelDown>:call LineNums()<CR>

nnoremap ,3 zt5<c-y>:call LineNums()<CR>|      " zt then scroll 5 lines up
nnoremap ,7 :call Trak("calc_current")<CR>|    " trak current total
nnoremap ,9 V']|                               " visual select last pasted lines
nnoremap ,1 i˙<esc>l|                          " insert highlight char 1
nnoremap ,2 iˑ<esc>l|                          " insert highlight char 2
nnoremap <leader>b :call remindcmds()<cr>|     " display reminders about vim and other commands

nnoremap <Leader>gq /'[-0-9a-zA-Z_%()/. ]\{2,999\}'<CR>
nnoremap \1 :call Pcotl()<CR>
nnoremap <c-tab> :call Pcotl()<CR>
" nnoremap <Leader>gw :set winfixwidth<CR>
nnoremap g9 :e ~/docs/django.potl<CR>
nnoremap g3 :e ~/docs/lst.todo<CR>
nnoremap g4 :e ~/docs/main.trak<CR>
nnoremap g5 :call ToggleAcp()<CR>
nnoremap g6 kdd
nnoremap \2 :call ToggleColorMode()<CR>

nnoremap _Q :r!~/mypython/sig.py<CR>
nnoremap _dd "_dd
nnoremap <Leader>gs :e ~/win-projects/scripts.txt<CR>
nnoremap ,gx :syntax sync fromstart<CR>
nnoremap g7 :!python "%"<CR>

nnoremap \a A  -andrei<esc>
" nnoremap \av O<CR>   -ak<CR><CR><BS>-- <CR> Python plugins for vim: outliner, todo list, project manager, calendar,<CR>expenses tracker, sortable table, and more \| http://lightbird.net/pysuite/<esc>

" nnoremap \ad O<CR>   -ak<CR><CR><BS>-- <CR> Django by Example Tutorials: http://lightbird.net/dbe/<CR>Pysuite - Python Vim plugins: http://lightbird.net/pysuite/<CR><esc>

nnoremap _W :wqa<CR>
nnoremap zff :/^\s*class\s\\|^\s*function\s\\|^\s*def\s/<CR>:setlocal foldexpr=getline(v:lnum)!~@/ foldmethod=expr foldlevel=0 foldcolumn=1<CR><CR>:nohl<CR>
nnoremap <silent>_Z :set foldexpr=getline(v:lnum)!~@/ foldlevel=0 foldcolumn=0 foldmethod=expr<CR>
nnoremap Q @q
nnoremap g2 :w<CR>:call DelBuffer()<CR>
nnoremap g1 :hi CursorLine  guibg=grey30<CR>
nnoremap _U :AlignCode<CR>
nnoremap <Leader>j :set ft=htmldjango<CR>
nnoremap <Leader>y :RunPyBuffer<CR>
nnoremap <Leader>gh :helptags ~/.vim/doc/<CR>
nnoremap \z "zP
nnoremap _H :call HelpGrep()<cr>
nnoremap gx %d%
nnoremap \o :set guifont=Inconsolata\ Medium\ 
nnoremap \w zR:call LineNums()<CR>
nnoremap \v zM:call LineNums()<CR>
nnoremap \g :!touch log<CR><CR>:!xterm -e 'tail -f log'&<CR><CR>:!python %  >>log<left><left><left><left><left><left>


nnoremap <Leader>w :write<CR>
nnoremap <Leader>v :e ~/.vimrc<CR>
nnoremap <Leader>e ?^\s*def<CR>:nohls<CR>
nnoremap <Leader>k /^class<CR>:nohls<CR>
nnoremap \k ?^class<CR>:nohls<CR>
nnoremap \n :set invnu<CR>
nnoremap _E :%s/^\s\+$//g<CR>
nnoremap \t :%s/\s\+$//g<CR>

nnoremap <Leader>p :!python "%"<CR>
nnoremap \p :!ipython -colors NoColor<CR>
nnoremap _V :vertical split<CR>
nnoremap <Leader>i :call ToggleFold()<CR>:call LineNums()<CR>
nnoremap _N :NERDTreeToggle<CR>:set columns=132<CR>
nnoremap \e :r!grep '^[ ]*\(def\\|class\)' %
nnoremap <m-c-p> "+[p
nnoremap \s :w<CR>:so %<CR>
nnoremap _R :ls<CR>:bd 
nnoremap <Leader>l :ls<CR>:b 
nnoremap \r :set noswf<CR>:set cpt=.<CR>
nnoremap _O :call ToggleFold(1)<CR>:call LineNums()<CR>

nnoremap <Leader>u :Utl<CR>
nnoremap <2-LeftMouse> :Utl ol<cr>
nnoremap _F :FufFile<CR>
nnoremap gc :lchdir %:p:h<CR>:pwd<CR>
nnoremap <Leader>/ :call Search()<CR>

nnoremap . .`[:call LineNums()<CR>

nnoremap <Leader>gg :exe 'vimgrep '.expand('<cword>').' '.expand('%') \| :copen \| :cc<CR>
nnoremap <Leader>G :exe 'vimgrep  '.expand('%') \| :copen \| :cc
nnoremap Y y$
nnoremap j gj:call LineNums()<CR>
nnoremap k gk:call LineNums()<CR>

" LineNums related commands
nnoremap <Leader>, H
" nnoremap <Leader>sm :call DisplayShortcuts(0)<CR>
" nnoremap <Leader>si :call DisplayShortcuts(1)<CR>
nnoremap _M :e ~/.vim/vimnotes.potl<CR>
nnoremap <Leader>F :set ft=txtfmt.
nnoremap <Leader>z :setlocal foldmethod=expr \| :setlocal foldexpr=GetPythonFoldBest(v:lnum)<CR>:call ToggleFold()<CR>:call LineNums()<CR>
nnoremap gk :!pychecker --limit 100 %<CR>
nnoremap <Leader>o :call Pdocfold()<CR>
nnoremap <Leader>q :q

" Save screen position when switching files with ctrl-^
" (disable for now because of interferance from tabbar)
" nnoremap <silent> <c-^> msHmt<c-^>:normal! 'tzt`s<CR>

nnoremap gl :AddLine<CR>
command! AddLine s/$/\r/ | :nohl | :call LineNums(1) | normal k
nnoremap gL :AddLineAbove<CR>
command! AddLineAbove exe "normal k" | :s/$/\r/ | :nohl | exe "normal j" | :call LineNums(1)

nnoremap _L :!ls<CR>
nnoremap <Leader>t :e ~/docs/todo.potl<CR>
nnoremap _A :e ~/docs/mycal.cal<CR>
nnoremap gy :e ~/docs/python.potl<CR>
nnoremap \m :e ~/docs/balance.fin<CR>

call motpat#Map(0, 'w', 'b', '\i\+\ze.\|$')

nnoremap <kPlus>     :cnext<CR>
nnoremap <kMinus>    :cprev<CR>
nnoremap <kMultiply> :cc<CR>
nnoremap <c-kPlus>   :clast<CR>
nnoremap <c-kMinus>  :cfirst<CR>
nnoremap <m-kPlus>   :cnewer<CR>
nnoremap <m-kMinus>  :colder<CR>

nnoremap <Leader>h :hide<cr>
nnoremap \x :syntax on<CR>
nnoremap <Leader>f za:call LineNums(1)<CR>
nnoremap _G <c-w>2k:bd<cr>:set nocursorline<cr><c-w>j<c-w>_:hi CursorLine guibg=grey30<CR>
nnoremap _B :!bkup.py %<CR>
nnoremap \d yyp:call LineNums(1)<CR>

" nnoremap gc :set nocursorline<cr>
nnoremap \u :cd ..<cr>
nnoremap \c :cd 
nnoremap \q zO:call LineNums(1)<CR>
nnoremap \h :!python ~/mypython/ifilter.py v<CR><CR>
nnoremap _J :!python ~/mypython/ifilter.py d<CR><CR>
" nnoremap <c-h> <c-w>p
nnoremap ga <c-w>k
nnoremap _X <c-w>_
nnoremap \j <c-w>h


nnoremap <c-down> j<c-e>
nnoremap <c-up> k<c-y>
" nnoremap <c-tab> <c-^>

nnoremap <C-S> :write<CR>
nnoremap <c-p> "+gp
" nnoremap <c-n> :cd ~/links/
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <c-j>j :!python ~/mypython/ifilter.py<CR><CR>
nnoremap <c-h> :call NextWin()<CR>


nnoremap <M-0> :e ~/.vim/maps.vim<CR>
nnoremap <M-.> :cd ..<CR>

nnoremap <M-,> :call Jump(1)<CR>
nnoremap <M-.> :call Jump(2)<CR>
nnoremap <M-/> :call Jump(3)<CR>

nnoremap <M-c> :cd 
nmap <M-d> dd
nnoremap <M-e> /^\s*def<CR>:nohls<CR>
nnoremap <M-f> za:call LineNums(1)<CR>
nnoremap <M-g> /^\s*def 
nnoremap <Leader>0 /^\s*class 
nnoremap <M-h> :help 
nnoremap <M-i> :hide<cr>
nnoremap <M-j> mz:m+<CR>`z==
nnoremap <M-k> mz:m-2<CR>`z==
nnoremap <M-l> :
nnoremap <M-m> <c-w>2+
nnoremap <M-n> <c-w>2-
nnoremap <M-o> :call Resize(0)<CR>
nnoremap <M-p> :call Resize(1)<CR>
nnoremap <M-q> gqip
nnoremap <M-r> :ls<CR>:b 
nnoremap <M-s> :!ls<CR>
nnoremap <M-t> :w<CR>:!<up><CR><CR>
nnoremap <M-v> :e 
nnoremap <M-x> :bd<CR>
nnoremap <M-z> :setlocal foldmethod=expr \| :setlocal foldexpr=GetPythonFoldBest(v:lnum) foldtext=PyFoldText()<CR>:call ToggleFold()<CR>:call LineNums()<CR>gg
nnoremap <M-z> :setlocal foldmethod=expr foldexpr=GetPythonFoldBest(v:lnum) foldtext=PyFoldText()
        \ <CR>:call ToggleFold()<CR>:call LineNums()<CR>gg

""
" nnoremap <esc>0 :e ~/.vim/maps.vim<CR>
" nnoremap <esc>. :cd ..<CR>

" nnoremap <esc>, :call Jump(1)<CR>
" nnoremap <esc>. :call Jump(2)<CR>
" nnoremap <esc>/ :call Jump(3)<CR>

" nnoremap <esc>c :cd 
" nmap <esc>d dd
" nnoremap <esc>e /^\s*def<CR>:nohls<CR>
" nnoremap <esc>f za:call LineNums(1)<CR>
" nnoremap <esc>g /^\s*def 
" nnoremap <esc>h :help 
" nnoremap <esc>i :hide<cr>
" nnoremap <esc>j mz:m+<CR>`z==
" nnoremap <esc>k mz:m-2<CR>`z==
" nnoremap <esc>l :
" nnoremap <esc>m <c-w>2+
" nnoremap <esc>n <c-w>2-
" nnoremap <esc>o :call Resize(0)<CR>
" nnoremap <esc>p :call Resize(1)<CR>
" nnoremap <esc>q gqip
" nnoremap <esc>r :ls<CR>:b 
" nnoremap <esc>s :!ls<CR>
" nnoremap <esc>t :w<CR>:!<up><CR><CR>
" nnoremap <esc>v :e 
" nnoremap <esc>x :bd<CR>
" nnoremap <esc>z :set foldmethod=expr \| :set foldexpr=GetPythonFoldBest(v:lnum)<CR>:call ToggleFold()<CR>:call LineNums()<CR>
