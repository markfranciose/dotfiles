"not vi compatible
set nocompatible
syntax on

" allow Alt + J for snippet expand
execute "set <M-j>=\ej"

"""
" PLUGINS
""""
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
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'

" additional syntax
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'leafgarland/typescript-vim'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'posva/vim-vue'

" color Schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" framework / language specific
Plugin 'tpope/vim-rails'

call vundle#end()

filetype plugin indent on

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
set ruler

" 2 space tabs and indents
set tabstop=2
set shiftwidth=2
set softtabstop=2
set et

" traditional backspace
set backspace=indent,eol,start

" no line wrapping
set nowrap

" no bells ever
set belloff=all

"""
" NERDTree
"""
" start up with NERDTree
autocmd VimEnter * NERDTree
" toggle NERDTree with F3
nmap <F3> :NERDTreeToggle<CR>
" show dotfiles
let NERDTreeShowHidden=1


" Utlsnips bindings
let g:UltiSnipsExpandTrigger="<A-j>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsUsePythonVersion = 2

" pick up .tsx files w/ typescript highlighting
autocmd BufNewFile,BufRead *.tsx set syntax=typescript
autocmd BufNewFile,BufRead *.vue set syntax=vue

nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" highlight chars past column 80
highlight ColorColumn ctermbg=yellow ctermfg=red
call matchadd('ColorColumn', '\%>80v', 100)

" dots to designate trailing whitespace
" set listchars=trail:~
" set list
