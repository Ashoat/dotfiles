function SESSION_NAME(name)
  silent !mkdir -p ~/.vim
  return a:name == "" ? g:session : a:name
endfunc

function SAVE_SESSION(session)
  let g:session = SESSION_NAME(a:session)
  wa
  exe "mksession! ~/.vim/session." . g:session
  exe "wviminfo! ~/.vim/sessioninfo." . g:session
endfunc

function LOAD_SESSION(session)
  silent tabonly
  silent only
  let g:session = SESSION_NAME(a:session)
  exe "source ~/.vim/session." . g:session
  exe "rviminfo! ~/.vim/sessioninfo." . g:session
endfunc

function DELETE_SESSION(session)
  let l:session = SESSION_NAME(a:session)
  call delete(expand("~/.vim/session." . l:session))
  call delete(expand("~/.vim/sessioninfo." . l:session))
endfunc

command -nargs=? S :call SAVE_SESSION("<args>")
command -nargs=? L :call LOAD_SESSION("<args>")
command -nargs=? D :call DELETE_SESSION("<args>")
