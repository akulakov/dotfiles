""""""" OPTIONS ---------------------------------------------------------

" let Tlist_Ctags_Cmd = '"e:\program files\ctags57\ctags.exe"'
set t_Co=256        " 256 colors
" Does not work right:

set nocompatible
set smartcase       " when searching, ignore case when pat is lowercase
set ignorecase
set softtabstop=4 tabstop=4 shiftwidth=4
set expandtab       " expand tab to spaces
set nobackup
set nowritebackup   " no temp backup either
" set autowriteall    " write buffer when switching to a new buffer
set showcmd         " display incomplete commands
set foldopen-=block
set winaltkeys=no   " no alt menu sh-cuts
set backspace=2
set formatoptions=tcqn  " defaults
" set comments=
set indentexpr=
set list listchars=tab:»·,trail:·,extends:$,nbsp:=      " python visible special chars
set laststatus=2    " status bar?
" set hlsearch        " highlight search
set incsearch
set indentkeys-=<:>
" set statusline=%<%f\ %h%m%r\ %10(%{getcwd()}%)\ \ \ \ %20.60(%{Vimp3Info()}%)\ \ \ \ %=%-7.(%l,%c%)
set statusline=%<%f\ %h%m%r\ %10(%{getcwd()}%)\ \ %=\ %-7(%{CurrentProjTime()}%)\ %=%-7.(%l,%c%)
set formatlistpat=^\\s*[-*.+]\\s*
set hidden
set scrolloff=0
set guifont=Inconsolata\ Medium\ 11
set cmdheight=1
set nowrap
set viminfo='100,<50,s10
set runtimepath+=/usr/share/vim/vim73
set cdpath+=~/win-projects/dprojects/django1.3/django
set autoread
" set tags+=/media/Main/Home/Projects/gen9/dataweb/tags,/media/Main/Home/Projects/dprojects/django1.3/django/tags
set tags=/media/Main/Home/Projects/gen9/dataweb/tags,/home/ak/gen9/django1.4/django/tags
set numberwidth=3
set pastetoggle=<F3>

" Variables
" let python_highlight_all = 1
let mapleader=","   " leader for sh-cuts

let g:pydiction_location        = '~/.vim/complete-dict'
" let g:pyindent_open_paren     = '2'
" let g:pyindent_nested_paren   = '&sw+1'
" let g:pyindent_continue       = '2'

" let g:pyindent_open_paren     = '&sw * 2'
" let g:pyindent_nested_paren   = '&sw * 2'
" let g:pyindent_continue       = '&sw * 2'
let g:NERDSpaceDelims           = 1
let g:fontsize                  = 11

" let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"
" let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"
let g:surround_{char2nr("i")}   = "{% if\1 \r..*\r &\1%}\r{% endif %}"
let g:surround_{char2nr("w")}   = "{% with\1 \r..*\r &\1%}\r{% endwith %}"
let g:surround_{char2nr("f")}   = "{% for\1 \r..*\r &\1%}\r{% endfor %}"
let g:surround_{char2nr(" ")}   = " \r "

let g:yankring_history_dir      = expand("$HOME/.vim/")
let g:yankring_history_file     = ".yankring_history"

let g:acp_ignorecaseOption      = 0

set vb t_vb=        " no visual & no audio bell
" note: cursorline highlight colour is set in after/plugin/cmds.vim

if has("gui_running")
    set background=dark
    setglobal cursorline
    set lines=63 columns=136
    set guifont=Inconsolata\ Medium\ 9
    let g:Tb_MoreThanOne=0
endif

