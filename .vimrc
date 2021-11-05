" SYNTAX HIGHLIGHTING
syntax on
set showmatch
set ruler

" TABS
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set backspace=2

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

" JS
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
