python import sys
python import vim
python vim.command("let s:pydoc_path=\'" + sys.prefix + "/lib/pydoc.py\'")

" Does not work right!?
" map <buffer> K :let save_isk = &iskeyword \| set iskeyword+=. \|
    " \ execute "Pyhelp " . expand("<cword>") \| let &iskeyword = save_isk<CR>
command! -nargs=1 Pyhelp :call ShowPydoc(<f-args>)
function! ShowPydoc(what)
  " compose a tempfile path using the argument to the function
  let path = $TEMP . '/' . a:what . '.pydoc'
  " run pydoc on the argument, and redirect the output to the tempfile
  call system(shellescape(s:pydoc_path . " " . a:what . " > " . path))
  " open the tempfile in the preview window
  execute "pedit " . path
endfunction

nnoremap <buffer> K :let save_isk = &iskeyword \| set iskeyword+=. \| execute "echo system('pydoc " . expand("<cword>") . "')" \| let &iskeyword = save_isk<CR>
