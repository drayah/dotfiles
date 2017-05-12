" window color & transparency
colorscheme monokai-soda
set transparency=0

" gui font
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h14

" turn off toolbar
set guioptions-=T

" setup the horizontal and vertical scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" open NERDTree to work directory
NERDTree ~/Work

" lets auto change current directory to Work directory
cd ~/Work

" use maximum screensize when in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
end

" Command-T ignore configuration
set wildignore+=*.class

" add some useful custom command mappings
map <Leader>nt :NERDTree<CR>
map <Leader>w :ZoomWin<CR>
