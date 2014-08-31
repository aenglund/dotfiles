set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'groenewege/vim-less'

call vundle#end()

syntax on
filetype on
filetype plugin on
filetype plugin indent on

set background=dark
colorscheme solarized

let mapleader = ","

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent

set showcmd
set noerrorbells

set scrolloff=3

set cul

set hlsearch
set incsearch
set showmatch
set ignorecase

set number
set ruler
set wrap
set title

set hidden

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

map <C-j> :bprev<CR>
map <C-k> :bnext<CR>
map <C-b> :buffers<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" show tabs and trailing spaces
set list listchars=tab:>·,trail:·

" Git Gutter - Display git diff in vim gutter
" Disabled by default - Enable with ctrl-g
let g:gitgutter_enabled = 0
highlight clear SignColumn
map <C-g> :GitGutterToggle<CR>
