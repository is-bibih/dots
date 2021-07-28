set nocompatible

" set clipboard buffer to x primary buffer
:set clipboard=unnamedplus

" syntax highlighting
:filetype plugin on
:syntax on
:set expandtab
:set shiftwidth=2
:set softtabstop=2

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
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'honza/vim-snippets'

call plug#end()

" colors
syntax enable
colorscheme challenger_deep

" install coc extensions
let g:coc_global_extensions = ['coc-marketplace', 'coc-pyright', 'coc-rome', 'coc-vimtex', 'coc-texlab', 'coc-snippets']

