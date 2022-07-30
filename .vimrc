" .vimrc - Rajesh Shenoy

""" General
set nolist
set mouse=a
set title
set nocompatible
set nrformats=
set t_vb=
filetype off
set nowrap
set nonu
set autoread
set encoding=utf-8
set clipboard=unnamed

let mapleader = ","


""" History 
set history=1000
set undolevels=1000
set wildmode=longest,list
set wildignore=*.swp,*.bak,*.pyc,*.class,*.obj,*.o

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
set backspace=indent,eol,start
set lbr
set tw=500

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" Syntax Highlighting
let python_highlight_all=1
syntax on

""" Colors
syntax enable

