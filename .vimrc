filetype off
call pathogen#infect()

set nocompatible

set backspace=indent,eol,start
set autochdir

set vb t_vb="
set noerrorbells
set novisualbell

set nowrap

set smartcase
set ignorecase
set hlsearch
set incsearch

set history=500
set undolevels=1000

set fileformats=unix,mac,dos
set encoding=utf-8
filetype plugin indent on
syntax on

set si
set ai

set number

set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set splitright
set splitbelow

set showmatch

set mousehide

set linespace=0

set lazyredraw

set wildmenu
set wildmode=longest,list,full

set ruler

set nobackup

set autoread

set hid

set magic

set laststatus=2

set statusline=%t\ 
set statusline+=%y\ 
set statusline+=[%c,%l]\ 
set statusline+=[%p%%\ of\ %L]\ 
set statusline+=%r%m 

nnoremap <leader>ee :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>cc <esc>I# <esc>
nnoremap <esc><esc> :nohlsearch<cr>

nnoremap ; :
nnoremap : <nop>

nnoremap n nzzzv
nnoremap N Nzzzv

vnoremap > >gv
vnoremap < <gv

nnoremap <c-e> :e#<cr>

nnoremap <space> <c-f>
nnoremap <s-space> <c-b>

nnoremap 0 ^

nnoremap <f5> :ls<cr>:b

augroup python_files
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" highlight 81st column
highlight ColorColumn ctermbg=magenta
set colorcolumn=81

