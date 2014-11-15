execute pathogen#infect()
syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
set number

" don't make vim compatible with vi 
set nocompatible

" reload files changed outside vim
set autoread 

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" enable matchit plugin which ships with vim and greatly enhances '%'
runtime macros/matchit.vim

" by default, in insert mode backspace won't delete over line breaks, or 
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" dont't unload buffers when they are abandoned, instead stay in the
" background
set hidden

" set unix line endings
set fileformat=unix
" when reading files try unix line endings then dos, also use unix for new
" buffers
set fileformats=unix,dos

" hide unnecessary gui in gVim
if has("gui_running")
    set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar
end

" remove the .ext~ files, but not the swapfiles
set nobackup
set writebackup
set noswapfile

" vim-css3-syntax
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" NERDTree
autocmd vimenter * NERDTree

colorscheme codeschool
