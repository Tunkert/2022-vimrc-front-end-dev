" probably don't need this
set nocompatible

" turn on syntax highlighting
syntax on

" disable startup message
set shortmess+=I

" show line numbers
set number

" set relative line numbers
set relativenumber

" make status bar visibile
set laststatus=2

" enable normal backspace operation
set backspace=indent,eol,start

" allow hidden buffers
set hidden

" improve searching
set ignorecase
set smartcase
set incsearch

" get rid of silly Q mapping
nmap Q <Nop>

" disable error bells
set noerrorbells visualbell t_vb=

" keep from using arrow keys
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/lifepillar/vim-mucomplete.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/AndrewRadev/tagalong.vim.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/gruvbox-community/gruvbox.git'

call plug#end()

set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages

let g:mucomplete#enable_auto_at_startup = 1

let g:tagalong_filetypes = ['html']

set background=dark
colorscheme gruvbox 

let g:airline_theme = 'gruvbox'

inoremap jj <Esc>

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set clipboard=unnamed

set scrolloff=5

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

inoremap <c-t> <Esc>:term<cr>
nnoremap <c-t> <Esc>:term<cr>

inoremap <c-b> <Esc>:Ex<cr>
nnoremap <c-b> <Esc>:Ex<cr>

inoremap <c-a> <Esc>:Goyo<cr>
nnoremap <c-a> <Esc>:Goyo<cr>

inoremap <c-s> <Esc>:w<cr>
nnoremap <c-s> <Esc>:w<cr>

inoremap <c-q> <Esc>:qa<cr>
nnoremap <c-q> <Esc>:qa<cr>
