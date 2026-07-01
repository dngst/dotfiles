"Plugins
call plug#begin()
Plug 'markonm/traces.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

"Settings
set scrolloff=8
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autocomplete
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
set clipboard=unnamedplus
let g:netrw_banner = 0
"Toggle with gh
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
colorscheme unokai
set path+=**
set splitbelow
"Auto save
autocmd InsertLeave,TextChanged * if &modified && !&readonly | write | endif

"Mappings
let mapleader = " "
nnoremap <silent><leader>e :Vex<cr>
nnoremap <silent><leader><cr> :so $MYVIMRC<cr>
nnoremap <c-q> :q<cr>
nnoremap <silent><c-h> :set hlsearch!<cr>
"Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e
nnoremap <leader>qr :sp ~/dotfiles/vimquickref.txt<cr>
nnoremap <leader>f :find<space>
nnoremap Q <nop>
nnoremap <f5> @:
noremap <leader>a :Ack!<space>
nnoremap <left> <c-w>h
nnoremap <down> <c-w>j
nnoremap <up> <c-w>k
nnoremap <right> <c-w>l
nnoremap <leader>s :%s/
