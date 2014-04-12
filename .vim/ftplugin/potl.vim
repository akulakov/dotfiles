function! Potl(...)
    :pyfile ~/.vim/python/potl.py
endfunction

function! PotlCloseFold()
    let closed = foldclosed('.') > 0
    if (!closed)
        normal zc
    endif
    return closed
endfunction


function! PotlPromote(dir)
    set lz
    let closed = PotlCloseFold()
    if a:dir == 1
        normal >>
    else
        normal <<
    endif
    if (!closed)
        normal zo
    endif
    set nolz
endfunction


function! PotlHelp()
    " Help listing
    echo " New header                        ".g:mapleader."n\n"
    echo " New after current section         ".g:mapleader."N\n"
    echo " Change current line into header   ".g:mapleader."e\n"
    echo " Foldlevel                         <N>Ctrl-j l\n"
    echo " Promote section                   ".g:mapleader.">\n"
    echo " Demote section                    ".g:mapleader."<\n"
    echo " Close one fold level              -\n"
    echo " Open one fold level               =\n"

    echo " Help                              ".g:mapleader."h\n"
endfu


" Make a more outline-friendly fold view.
function! PotlFoldText()
    let l = getline(v:foldstart)
    let line = substitute(l, '^[ ]*', '', '')
    let prefix = repeat(' ', (strlen(l) - strlen(line)))
    return prefix . line
endfunction


function! PotlFoldLevel(n)
    let l = getline(a:n)
    if (l == '') | return '=' | endif

    let level = matchend(l, '^[ ]*') / 4

    " Recognize header lines, which start with optional spaces and a '·'
    if (l =~ '^[ ]*·')
        return '>' . (level + 1)
    else
        return '='
    endif
endfunction
