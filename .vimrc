set nocompatible

" Turn filetype off before loading vundle
filetype off

" Include Vundle to vim runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Start Vundle
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'ctrlpvim/ctrlp.vim'

" End Vundle
call vundle#end()

" Enable syntax processing
syntax on

" Enable filtype detection
filetype plugin indent on

" Tell vim that the background is dark
set background=dark

" Use solariized color scheme
colorscheme solarized

" Use comma as map leader
let mapleader = ","

" Show two spaces for tabs
set tabstop=2

" Insert two spaces when using << or >>
set shiftwidth=2

" Turn <TAB> into spaces
set expandtab

" Insert two spaces when using <TAB>
set softtabstop=2

" Use autoindent for automatic indentation
set autoindent

" Show command in the bottom bar
set showcmd

" Disable beeping
set noerrorbells

" Set the minimum number of lines around the cursor
set scrolloff=3

" Highlight the current line
set cul

" Highlight all search hits
set hlsearch

" Perform incremental seearches while typing
set incsearch

" Show the matching bracket, parathesis etc.
set showmatch

" Ignore case when pattern is lowercase, otherwise be case sensitive
set ignorecase
set smartcase

" Show line numbers
set number

" Show ruler in the bottom bar
set ruler

" Wrap lines to appear on multiple lines (no hard wrapping)
set wrap

" Set window title
set title

" Hide buffers instead of closing
set hidden

" Enabled backups
set backup

" Path to store backups
set backupdir=~/.vim/backup

" Path to working directory for current file
set directory=~/.vim/tmp

" Jump between open buffers
map <C-j> :bprev<CR>
map <C-k> :bnext<CR>
map <C-b> :buffers<CR>

" Remove highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Disable stepping with up, down, left and right keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Visualize tabs and trailing spaces
set list listchars=tab:>·,trail:·

" Git Gutter - Display git diff in vim gutter
" Disabled by default - Enable with ctrl-g
let g:gitgutter_enabled = 0
highlight clear SignColumn
map <C-g> :GitGutterToggle<CR>

" CocoaPods
au BufNewFile,BufRead Podfile,*.podspec      set filetype=ruby

" QML
au FileType qml setlocal shiftwidth=4 tabstop=4 softtabstop=4

