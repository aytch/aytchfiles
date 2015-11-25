" Source $ADMIN_SCRIPTS/master.vimrc
" Vundle Config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'luochen1990/rainbow'

call vundle#end()

" Enable syntax highlighting
syntax on

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Show partial commands in the last line of the screen
set showcmd

" Better command-line completion
set wildmenu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Display line numbers on the left
" set number

" airline config
let g:airline_powerline_fonts = 0
let g:airline_theme='molokai'
set laststatus=2

" NERDtree config
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '⤞'
let g:NERDTreeDirArrowCollapsible = '⤥'
