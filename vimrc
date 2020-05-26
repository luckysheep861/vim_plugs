set nu
set hlsearch
set relativenumber
set incsearch
set cursorline
set cursorcolumn
set t_Co=256
set invlist
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4
syntax on

" remember cursor position
" set viminfo='10,\"100,:20,%,n~/.viminfo
function LocatePosition()
    if line("'\"") > 0
        if line("'\"") <= line("$")
            exe "norm '\""
        else
            exe "norm $"
        endif
    endif
endfunction
au BufReadPost * :call LocatePosition()

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
autocmd BufRead * normal +
" open cur fold
map = zo
" close cur fole
map - zc
" open all fold
map + zR
" close all fold
map _ zM

" auto add file info when create new .sh and .py file
function AddInfo()
    call setline(1, "")
    call append(1, "#====================================================")
    call append(2, "# Author: HongxuanTang")
    call append(3, "# Create Date: " . strftime("%Y-%m-%d"))
    call append(4, "# Description: ")
    call append(5, "#====================================================")
    call append(6, "")
    if &filetype=="python"
        call append(7, "import sys")
        call append(7, "import pdb")
        call append(9, "import json")
        call append(10,"")
    else
        call append(7, "")
    endif
    normal G
endfunction
autocmd BufNewFile *.sh,*.py :call AddInfo()
