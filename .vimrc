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

""" Folding

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=0

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
nnoremap <leader>p :bp<cr>
nnoremap <leader>n :bn<cr>
nnoremap ,, <C-O>
nnoremap .. <C-I>
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <F5> :buffers<cr>:b<space>
nnoremap <F6> :ls<cr>
nnoremap <F7> :let @/=""<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :e $MYVIMRC<cr>

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:neocomplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_play_open_browser = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let g:go_fmt_command = "goimports"

""" Plugins
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

""" Colors
let g:molokai_original = 1

""" Go Specific

function! s:GoVet()
    cexpr system("go vet " . shellescape(expand('%')))
    copen
endfunction
command! GoVet :call s:GoVet()


function! s:GoLint()
    cexpr system("golint " . shellescape(expand('%')))
    copen
endfunction
command! GoLint :call s:GoLint()
