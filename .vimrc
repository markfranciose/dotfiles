"not vi compatible
set nocompatible
syntax on

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" general
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" additional syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'

" color Schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" framework / language specific
Plugin 'tpope/vim-rails'

call vundle#end()

filetype plugin indent on

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

" no bells ever
set belloff=all

"start up with NERDTree
autocmd VimEnter * NERDTree

"toggle NERDTree with F3
nmap <F3> :NERDTreeToggle<CR>

" Utlsnips bindings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<F4>"
let g:UltiSnipsUsePythonVersion = 3

