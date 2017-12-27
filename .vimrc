"not vi compatible
set nocompatible
filetype plugin indent on
syntax on

""Vundle
"set rtp=+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-airline'
"Plugin 'airblade/vim-gitgutter'

"Plugin 'altercation/vim-colors-solarized'
"call vundle#end()

"no right or lefthand scroll bars in gvim
:set guioptions-=r
:set guioptions-=L

"better command line completion
set wildmenu

"highlight matches
"set hlsearch
"use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"instead of failing a commannd b/c of unsaved changes, ask if you want to save
set confirm

set number
set relativenumber
set ruler

" 2 space tabs and indents
set tabstop=2
set shiftwidth=2
set softtabstop=2

" traditional backspace
set backspace=indent,eol,start

" no line wrapping
set nowrap

"start up with NERDTree
autocmd VimEnter * NERDTree

"toggle NERDTree with F3
nmap <F3> :NERDTreeToggle<CR>

execute pathogen#infect()
