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
"set noswapfile

""" Shorcuts

let mapleader = ","
let g:mapleader = ","
set pastetoggle=<F2>

nnoremap <leader>w :w!<cr>
nnoremap <leader>wq :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>e<space> :e<space>
nnoremap <leader>a<space> :args<space>
nnoremap <leader>ls :ls<cr>
nnoremap <leader>b :bp<cr>
nnoremap <leader>f :bn<cr>

nnoremap <F2> :set nonu!<cr>
nnoremap <F3> :set rnu!<cr>
nnoremap <F4> :ls<cr>
nnoremap <F5> :b<space>
nnoremap <F6> :e $MYVIMRC<cr>
nnoremap <F7> :so $MYVIMRC<cr>
nnoremap ; :

""" Plugins
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
