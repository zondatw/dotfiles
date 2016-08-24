syntax on                                                                                                                                                                                 

" 256 colors
set t_Co=256

" sane text files
set fileformat=unix
set encoding=utf-8

" display number
set number

" no line wrapping
set nowrap

" sane tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" set the background color
set background=dark

" set color scheme
color molokai

" display cursor co-ords at all times
set ruler
set cursorline

" set the indent
set smartindent

" show search matches as the search pattern is typed
set incsearch

" highlight last search matches
set hlsearch

" search-next wraps back to start of file
set wrapscan

" show math parentheses
set showmatch

" display number of selected chars, lines, or size of blocks.
set showcmd

" set status line
set laststatus=2

set backspace=indent,eol,start

" set tmux color 256
if exists('$TMUX')
	  set term=screen-256color
endif

" =================================

" map 
noremap <F3> :set number!<Cr>
noremap <F4> :set wrap!<Cr>
noremap <F5> :set paste!<Cr>
noremap <F6> :NERDTreeToggle<Cr>
noremap <F7> :TagbarToggle<Cr>

" =================================

" enable powerline-fonts
let g:airline_powerline_fonts=1
let g:airline_theme='lucius'


" Plugin
" **********************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

	Plugin 'gmarik/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'luochen1990/rainbow'
	Plugin 'L9'             "L9 is required by AutoComplPop
	Plugin 'othree/vim-autocomplpop'
	Plugin 'majutsushi/tagbar'
	Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required


" airline
" **********************************************************
" if open tabline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

let g:airline#extensions#tabline#enabled = 1
