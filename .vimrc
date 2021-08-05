set nocompatible

" set clipboard buffer to x primary buffer
:set clipboard=unnamedplus

" syntax highlighting
:filetype plugin on
:syntax on
:set expandtab
:set shiftwidth=2
:set softtabstop=2

" disable showing active mode
set noshowmode
" disable displaying file name etc
set shortmess+=F

" filetype specific indents and autoindent
:filetype indent on
:set autoindent

" line number column
:set number

" fetch plugins if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

call plug#end()

" colors
syntax enable
colorscheme shades-of-pastel

" install coc extensions
let g:coc_global_extensions = ['coc-marketplace', 'coc-pyright', 'coc-rome', 'coc-vimtex', 'coc-texlab', 'coc-snippets']

