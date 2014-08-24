" .vimrc - Rajesh Shenoy

""" General
set nolist
set mouse=a
set title
set nocompatible
set nrformats=
set t_vb=

""" History 
set history=1000
set undolevels=1000
set wildmode=longest,list
set wildignore=*.swp,*.bak,*.pyc,*.class,*.obj,*.o

""" Reload
set autoread

""" Indent 
filetype plugin on
filetype indent on
set ffs=unix,mac,dos
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set shiftround
set autoindent
set copyindent
set smartindent
set nowrap
set backspace=indent,eol,start
set nu
set lbr
set tw=500
set omnifunc=syntaxcomplete#Complete

""" Search
set hlsearch
set incsearch
set mat=2

""" Sounds
set noerrorbells
set novisualbell
set tm=500

""" Colors
colorscheme delek
syntax enable

""" Editing
set encoding=utf8
set hidden
set ignorecase
set smartcase
set nobackup
set completeopt=menu,preview,menuone,longest
"set noswapfile

""" Shortcuts

let mapleader = ","
let g:mapleader = ","
set pastetoggle=<F2>
noremap \ ,
nnoremap <leader>w :w!<cr>
nnoremap <leader>wq :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>e<space> :e<space>
nnoremap <leader>a<space> :args<space>
nnoremap <leader>ls :ls<cr>
nnoremap <leader>b :bp<cr>
nnoremap <leader>f :bn<cr>

nnoremap <F3> :set nonu!<cr>
nnoremap <F4> :set rnu!<cr>
nnoremap <F5> :buffers<cr>:b<space>
nnoremap <F6> :ls<cr>
nnoremap <F7> :let @/=""<cr>
nnoremap <F8> :e $MYVIMRC<cr>
nnoremap <F9> :so $MYVIMRC<cr>
nnoremap <F10> :!ctags -R -f ~/.vim/tags/cpp  --fields=+iSKlmnzt --languages=+C,+C++ --sort=yes --exclude=kojo --exclude=ztu /work/rshenoy/git/algo/brama<cr>

""" Tags
set tags+=~/.vim/tags/cpp
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

""" Plugins
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

""" Indenting and Syntax
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim 
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
:autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake
