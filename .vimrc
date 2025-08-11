"Plugins
call plug#begin()
Plug 'Donaldttt/fuzzyy'
Plug 'github/copilot.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'markonm/traces.vim'
call plug#end()

"Settings
set scrolloff=8
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cursorline
set backspace=indent,eol,start
set termguicolors
set spell
set showmatch
set incsearch
set ignorecase
set list listchars=trail:·
set noswapfile
set wildmenu
set wildoptions=pum
set undofile
set undodir=~/.vim/undo
set viminfo='100,<1000,s10,h
set history=1000
set autoread
set hidden
let g:netrw_banner = 0
"Toggle with gh
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:auto_save = 1
colorscheme unokai

"Mappings
let mapleader = " "
nnoremap <silent><leader>e :Vex<cr>
nnoremap <silent><leader>ff :FuzzyFiles<cr>
nnoremap <silent><leader><cr> :so $MYVIMRC<cr>
nnoremap <c-q> :q<cr>
vnoremap <c-up> :m '<-2<cr>gv=gv
vnoremap <c-down> :m '>+<cr>gv=gv
nnoremap <silent><c-h> :set hlsearch!<cr>
nnoremap <silent><leader>tr :%s/\s\+$//e<cr>
xnoremap <silent><c-c> :w !xclip -sel c<cr><cr>

