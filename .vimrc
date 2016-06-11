" .vimrc - Rajesh Shenoy

""" General
set nolist
"set mouse=a
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
filetype on
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
autocmd Filetype go setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype erb setlocal ts=2 sts=2 sw=2
autocmd Filetype html.erb setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

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

""" Editing
set encoding=utf8
set hidden
set ignorecase
set smartcase
set nobackup
set completeopt=menu,preview,longest
"set noswapfile

""" Shortcuts
let mapleader = ","
let g:mapleader = ","

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

set pastetoggle=<F2>
nnoremap <F3> :set nonu!<cr>
nnoremap <F4> :buffers<cr>
nnoremap <F5> :buffers<cr>:b<space>
nnoremap <F6> :ls<cr>
nnoremap <F7> :let @/=""<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :e $MYVIMRC<cr>
nnoremap <F10> :so $MYVIMRC<cr>

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

let g:go_fmt_command = "goimports"
let g:go_def_mode = "godef"
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_disable_for_files_larger_than_kb = 18

"map <c-f> :call JsBeautify()<cr>
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

""" Plugins
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

""" Colors
syntax enable
colorscheme molokai

