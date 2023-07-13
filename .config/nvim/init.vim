"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|


" turn on syntax highlighting
syntax on

" check spekking when f5 key is pressed
map <F5> :setlocal spell! spelllang=en <CR>

" line numbers
set number
set relativenumber

" idek
set nocompatible
filetype plugin on
let g:airline_powerline_fonts = 1


" set the tap space
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ajh17/VimCompletesMe'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
