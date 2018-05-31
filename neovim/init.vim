" vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'othree/html5.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace'
Plug 'leafgarland/typescript-vim'
Plug 'vim-scripts/searchfold.vim'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'archseer/colibri.vim'
Plug 'badacadabra/vim-archery'
Plug 'dim13/smyck.vim'
Plug 'yuttie/hydrangea-vim'
Plug 'baines/vim-colorscheme-thaumaturge'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'phanviet/vim-monokai-pro'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dustinfarris/vim-htmlbars-inline-syntax'
Plug 'eraserhd/parinfer-rust'
Plug 'terryma/vim-multiple-cursors'
Plug 'gcmt/taboo.vim'
call plug#end()

syntax on
filetype plugin indent on

set nocompatible
set termguicolors
set background=dark

" backspace
set backspace=indent,eol,start

" enable colorscheme in terminal
colorscheme thaumaturge

" break lines on word barriers
set linebreak

" show line numbers
set number
set relativenumber

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

" set tabstop at 2 spaces
set tabstop=2
set softtabstop=2
set expandtab

" set shift width at 2 spaces
set sw=2

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

" rainbow parens disabled by default
let g:rainbow_active = 1

" rainbow colors
let g:rainbow_conf = {
\ 'guifgs': [
\   '#778899',
\   '#b0c4de',
\   '#66cdaa',
\   '#f4a460',
\   '#db7093',
\   '#dda0dd'
\ ]
\}

" highlight inline handlebars
autocmd BufRead,BufNewFile *.js HighlightInlineHbs

" make fzf use the silver searcher
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" map ctrl-p
nnoremap <C-P> :FZF<Enter>

" insert mode map jk to esc
imap jk <Esc>
