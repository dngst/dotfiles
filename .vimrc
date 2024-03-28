set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline
set backspace=indent,eol,start
set clipboard+=unnamedplus
set termguicolors

"Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'wakatime/vim-wakatime'
Plug 'vim-scripts/vim-auto-save'
Plug 'ayu-theme/ayu-vim'
call plug#end()

"Ayu Theme
let ayucolor="dark"
colorscheme ayu

"Auto Save
let g:auto_save = 1

"Mappings
let mapleader = " "
nnoremap <leader>e :Vex<CR>
nnoremap <Leader><CR> :so ~/dotfiles/.vimrc<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

