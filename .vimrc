" SYNTAX HIGHLIGHTING
syntax on
set showmatch
set ruler
set re=0

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
let g:javascript_plugin_flow=1
let g:jsx_ext_required=0

" Always show statusline
:set laststatus=2

" Use relative paths for filenames in the statusline
set statusline=%{expand('%:p:~:.')}\ 
set statusline+=%h%w%m%r\ 
set statusline+=%=%(%l,%c%V\ %=\ %P%)
