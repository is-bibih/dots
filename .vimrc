" set clipboard buffer to x primary buffer
:set clipboard=unnamedplus

" syntax highlighting
:filetype plugin on
:syntax on

" filetype specific indents
:filetype indent on

" line number column
:set number

" plugins
call plug#begin('~/.vim/plugged')

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

Plug 'ajmwagar/vim-deus'   

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='deus'

Plug 'preservim/nerdtree'

call plug#end()

" colors
set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" nerdtree when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" nerdtree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" nerdtree keybinging
map <C-n> :NERDTreeToggle<CR>

" close vim when only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
