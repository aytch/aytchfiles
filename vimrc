" Source $ADMIN_SCRIPTS/master.vimrc
" Vundle Config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'Vundlevim/Vundle.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'luochen1990/rainbow'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/rainbow_parentheses.vim'

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

""" vim trickery!

"" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" " Fast saving
nmap <leader>w :w!<cr>

" " Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" " When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

""" !vim trickery

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

" Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

""" vim trickery!

"" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" " Fast saving
nmap <leader>w :w!<cr>

" " Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" " When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

""" !vim trickery
