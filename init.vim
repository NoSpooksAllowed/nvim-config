call plug#begin('~/.config/nvim/plugged')

"navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colorshemes
Plug 'morhetz/gruvbox'

"code completion
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'StanAngeloff/php.vim'
Plug 'mattn/emmet-vim'

call plug#end()

set number
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set splitbelow
set encoding=utf-8

syntax on
filetype plugin indent on
colorscheme gruvbox
set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>

function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

nnoremap gA :call SynGroup()<CR>
