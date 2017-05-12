" pathogen stuff
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" backspace
set backspace=indent,eol,start

" enable colorscheme in terminal 
set term=xterm-256color
colorscheme molokai

" break lines on word barriers
set linebreak

" show line numbers
set number

" dont wrap lines
set nowrap

" auto jump to matching text on / searches
set incsearch

" highlight all / search matches
set hlsearch

" set custom leader
let mapleader = ","

" ignore case on searches
set ignorecase

" set tabstop at 4
set tabstop=4
set softtabstop=4
set expandtab

" set shift width at 4
set sw=4

" set autoindent
set autoindent

" set folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" always open :new below current window
set splitbelow

" vim-airline powerline fonts
let g:airline_powerline_fonts = 1

" vim-indent-guides config, skinny guides
let g:indent_guides_guide_size = 1

" rainbow parens disabled by default
let g:rainbow_active = 0
