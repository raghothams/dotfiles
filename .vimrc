filetype off
call pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'groenewege/vim-less'
Plugin 'ajh17/Spacegray.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

" Sane navigation with splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-[> <c-w>h
nnoremap <c-]> <c-w>l

nnoremap <leader>ee :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
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

nnoremap <leader>v :vnew<cr>
nnoremap <leader>h :new<cr>

nnoremap <leader>q :bd<cr>

nnoremap <C-b> :CtrlPBuffer<cr>

nnoremap <leader>w :set wrap!<cr>
nnoremap <leader>l :set spell!<cr>

nnoremap j gj
nnoremap k gk

augroup python_files
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

set colorcolumn=80

" set relative numbering
set relativenumber

" force Gdiff to vertical split
set diffopt+=vertical

" remap CtrlN to CtrlSpace
inoremap <C-Space> <C-n>

" NERDTree 
nnoremap <C-n> :NERDTreeToggle<CR>
