set nocompatible

" --------- editing ---------

" set clipboard buffer to x primary buffer
set clipboard=unnamedplus

" incremental search
set incsearch

" filetype specific indents and autoindent
filetype indent on
set autoindent

" reload buffers on file change
set autoread

" set amount of lines to keep above and below cursor
set scrolloff=50

" better command completion
set wildmenu

" --------- appearance ---------

" syntax highlighting
filetype plugin on
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2

" disable showing active mode
set noshowmode
" disable displaying file name etc
set shortmess+=F

" line number column
set number

" colors
syntax enable
colorscheme shades-of-pastel

" --------- plugins ---------

" fetch plugins if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

call plug#end()

" install coc extensions
let g:coc_global_extensions = ['coc-marketplace', 'coc-pyright', 'coc-rome', 'coc-vimtex', 'coc-texlab', 'coc-snippets']

