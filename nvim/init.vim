let mapleader = "\<space>"
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap ; :

set number
set cursorline
set cursorcolumn
set list
set listchars=tab:t_,trail:~,eol:$
set shellcmdflag=-ic
" indent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=syntax

call plug#begin(stdpath('data') . '/plugged')
Plug 'dart-lang/dart-vim-plugin'
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" motions
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" color schemes
Plug 'cocopon/iceberg.vim'
Plug 'sindresorhus/focus', {'rtp': 'vim'}
call plug#end()

noremap <leader>p :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
noremap <leader>m :CtrlPMRU<cr>

colorscheme iceberg

let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:rustfmt_autosave = 1
