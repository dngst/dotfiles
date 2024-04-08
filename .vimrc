set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
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
set history=1000
set autoread
set hidden

"Netrw
let g:netrw_banner = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
autocmd FileType netrw highlight directory guifg=#8cd3ff

"Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'wakatime/vim-wakatime'
Plug 'vim-scripts/vim-auto-save'
Plug 'ayu-theme/ayu-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'markonm/traces.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
call plug#end()

"Theme
let ayucolor="dark"
colorscheme ayu

"Auto Save
let g:auto_save = 1

"Mappings
let mapleader = " "
nnoremap <silent><Leader>e :Vex<CR>
nnoremap <silent><Leader><CR> :so ~/.vimrc<CR>
nnoremap <silent><Leader>ff :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-q> :q<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+<CR>gv=gv
noremap <C-h> :set hlsearch!<CR>
nnoremap <silent><Leader>tr :%s/\s\+$//<CR>
map <silent><C-c> :w !xclip -sel c<CR><CR>
vmap < <gv
vmap > >gv

