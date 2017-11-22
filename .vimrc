"not via compatible
set nocompatible
filetype plugin indent on
syntax on

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


execute pathogen#infect()




