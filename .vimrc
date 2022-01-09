syntax on
filetype plugin indent on
set nocompatible
set ts=2 sts=2 sw=2 et ai si
set nu rnu
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/neoclide/coc.nvim.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/sickill/vim-monokai.git'

call plug#end()

set bg=dark
set termguicolors
colo monokai

let g:airline_theme='base16_monokai'

inoremap <c-t> <Esc>:term<cr>dotnet build<cr>
nnoremap <c-t> <Esc>:term<cr>dotnet build<cr>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <c-b> <Esc>:Ex<cr>
nnoremap <c-b> <Esc>:Ex<cr>

inoremap <c-a> <Esc>:Goyo<cr>
nnoremap <c-a> <Esc>:Goyo<cr>

inoremap <c-s> <Esc>:w<cr>
nnoremap <c-s> <Esc>:w<cr>
