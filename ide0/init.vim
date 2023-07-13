"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|


" turn on syntax highlighting
syntax on

" line numbers
set number
set relativenumber

" idek
set nocompatible
filetype plugin indent on
let g:airline_powerline_fonts = 1
" compile latex


" set the tap space
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ajh17/VimCompletesMe'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
call plug#end()

"let g:ale_linters = {'rust': ['analyzer']}

"if (has("termguicolors"))
"  set termguicolors
"endif
colorscheme nord

let g:go_version_warning = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1

"pls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'

hi clear Conceal

" Nerdtree
" Open on no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open on dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>

let g:coc_disable_startup_warning = 1

let g:python3_host_prog="/usr/bin/python3"

"autocmd BufWrite * :Autoformat
"
"
au BufNewFile,BufRead *.pp set filetype=ruby

set mouse=

au BufRead,BufNewFile *.md setlocal textwidth=80 wrap linebreak nolist spell
