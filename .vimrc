
" Plug
" **********************************************************
set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')

	Plug 'tomasr/molokai'

	Plug 'vim-scripts/Auto-Pairs'
	Plug 'scrooloose/nerdtree'
		" show hidden files
		let NERDTreeShowHidden=1
	Plug 'ervandew/supertab'
		let SuperTabMappingForward="<S-Tab>"
	Plug 'majutsushi/tagbar'
	Plug 'junegunn/vim-easy-align'
		" Start interactive EasyAlign in visual mode (e.g. vipga)
		xmap ga <Plug>(EasyAlign)
		" Start interactive EasyAlign for a motion/text object (e.g. gaip)
		nmap ga <Plug>(EasyAlign)"
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'airblade/vim-gitgutter'
		nmap <Leader>ha :GitGutterStageHunk<CR>
		nmap <Leader>hu :GitGutterRevertHunk<CR>
		nmap <Leader>hv :GitGutterPreviewHunk<CR>
	Plug 'jistr/vim-nerdtree-tabs'
	
	Plug 'hdima/python-syntax'
		let python_highlight_all = 1

	" airline
	" **********************************************************
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'altercation/vim-colors-solarized'
	Plug 'luochen1990/rainbow'
		" if open tabline
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif
		let g:airline_powerline_fonts=1
		let g:airline_theme='lucius'

		let g:airline_left_sep = '▶'
		let g:airline_left_alt_sep = '❯'
		let g:airline_right_sep = '◀'
		let g:airline_right_alt_sep = '❮'
		let g:airline_symbols.linenr = '¶'
		let g:airline_symbols.branch = '⎇'

		let g:airline#extensions#tabline#enabled = 1

	Plug 'editorconfig/editorconfig-vim'

call plug#end()
filetype plugin indent on

" **********************************************************


" basic config
" **********************************************************

syntax on                                                                                                                                                                                 

let mapleader=" " " leader key
set t_Co=256 " 256 colors
color molokai " set color scheme
set fileformat=unix " fileformat unix
set encoding=utf-8 " encoding utf-8
set number " display number
set mouse=a " mouse on
set nowrap " no line wrapping
set background=dark " background color
set colorcolumn=120 " display cursorline for column
set smartindent " set the indent
set incsearch " show search matches as the search pattern is typed
set hlsearch " highlight last search matches
set wrapscan " search-next wraps back to start of file
set showmatch " show math parentheses
set showcmd " display number of selected chars, lines, or size of blocks.
set laststatus=2 " set status line
set backspace=indent,eol,start " backpace
set nobackup " no backup
set nowritebackup
set noswapfile " no swap file
set scrolloff=5 " scroll while close top or under

" sane tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" display cursor co-ords at all times
set ruler
set cursorline

" set tmux color 256
if exists('$TMUX')
	  set term=screen-256color
endif

" show all white spaces as a character
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:.
set list

" **********************************************************


" map 
" **********************************************************
noremap <F5> :set number!<Cr>
noremap <F6> :set wrap!<Cr>
noremap <F7> :set paste!<Cr>
noremap <F8> :NERDTreeToggle<Cr>
noremap <F9> :TagbarToggle<Cr>

" **********************************************************

" file type
" **********************************************************
autocmd FileType python setlocal et sta  sw=4 sts=4 cc=80 completeopt-=preview
autocmd FileType html setlocal et sw=2 sts=2

" **********************************************************
