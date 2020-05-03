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

call plug#end()

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
