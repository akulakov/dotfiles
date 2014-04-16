" ~/.vim/snippets/python.snippets
" ~/.vimperatorrc

" set columns=130 lines=67

source ~/.vim/options.vim
source ~/.vim/maps.vim
source ~/.vim/imaps.vim
source ~/.vim/vmaps.vim         " command maps are here, too!
source ~/.vim/autocmd.vim
source ~/.vim/functions.vim
source ~/.vim/abbr.vim

fun SetupVAM()
  let addons_base = expand('$HOME') . '/.vim/vam/'
  exec 'set runtimepath+='.addons_base.'vim-addon-manager'

  " unix based os users may want to use this code checking out VAM
  " if !isdirectory(addons_base.'/vim-addon-manager')
  "   exec '!p='.shellescape(addons_base).'; mkdir -p "$p" && cd "$p" && git clone --depth 1 git://github.com/MarcWeber/vim-addon-manager.git'
  " endif

  " commenting try .. endtry because trace is lost if you use it.
  " There should be no exception anyway
  " try
  " call vam#ActivateAddons(['snipmate'], {'auto_install' : 0})
    " pluginA could be github:YourName see vam#install#RewriteName()
  " catch /.*/
  "  echoe v:exception
  " endtry
endf
" call SetupVAM()

filetype plugin indent on
if &term == "xterm" | colorscheme adam | else | colorscheme solarized | endif
syntax on
" set lines=79 columns=242
