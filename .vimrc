" SYNTAX HIGHLIGHTING
syntax on
set showmatch
set ruler

" TABS
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" MOUSE
if has("mouse")
  set mouse=a
  set mousehide
endif

" AUTOCOMPLETION
set wildmode=list:longest

" UNDO
set undofile
set undodir=~/.vim/undodir
