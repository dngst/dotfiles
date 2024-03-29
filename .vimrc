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

"Cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[6 q"
let &t_EI = "\<Esc>[6 q"

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
call plug#end()

"Ayu Theme
let ayucolor="dark"
colorscheme ayu

"Auto Save
let g:auto_save = 1

"Mappings
let mapleader = " "
nnoremap <leader>e :Vex<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

