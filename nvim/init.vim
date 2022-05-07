set number
set relativenumber
set autoindent
set tabstop=3
set shiftwidth=3
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
filetype on
filetype plugin on
filetype indent on
syntax on
set sidescroll=6
set splitright
set splitbelow

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc:
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw):
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/romgrk/doom-one.vim'

call plug#end()


nmap <C-f> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
nmap <C-s> :TerminalSplit bash<CR>
colorscheme doom-one

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>ls

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='base16'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" start terinal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

