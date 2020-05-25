set nu
set hlsearch
set relativenumber
set incsearch
set cursorline
set cursorcolumn
set t_Co=256
set invlist
set ts=4
set expandtab
set autoindent
syntax on

" remember vim position
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" install vim plug
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
call plug#end()

" set monokai
colorscheme monokai

" set air-line
set laststatus=2 
let g:airline#extensions#tabline#enabled=1
nnoremap <tab> <C-w>w

" set NERDTree
filetype plugin indent on
nnoremap <F10> <esc>:NERDTree<CR>

" set taglist
let Tlist_Auto_Open=1 "auto open Tlist
let Tlist_Use_Right_Window=1  " taglist窗口的位置
nnoremap <F9> <esc>:Tlist<CR>
let Tlist_Exit_OnlyWindow=1 "exit Tlist if close sourse file
" let Tlist_Show_One_File=0 "only show current file's Tlist
" let Tlist_Compact_Format=0 "Hide help menu

" set fold
set fdm=indent
" open cur fold
map = zo
" close cur fole
map - zc
" open all fold
map + zR
" close all fold
map _ zM
