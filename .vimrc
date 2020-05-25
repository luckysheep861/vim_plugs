set nu
set hlsearch
set relativenumber
set incsearch
set cursorline
set cursorcolumn
set t_Co=256
set invlist
syntax on

" install vim plug
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
call plug#end()

" set monokai
colorscheme monokai

" set air-line
set laststatus=2 
let g:airline#extensions#tabline#enabled=1

" set NERDTree
filetype plugin indent on
nnoremap <F10> <esc>:NERDTree<CR>
