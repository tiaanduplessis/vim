"============================================================
" Vim plug
"============================================================

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'trevordmiller/nova-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer' }

call plug#end()

"============================================================
" Settings
"============================================================
syntax on

set mouse=a
set encoding=utf-8
set smartindent
set termguicolors
set t_Co=256
set backspace=indent,eol,start
set clipboard^=unnamed
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set relativenumber
set cursorline
set showmatch
set history=500
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set noswapfile

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Quit if only nerdtree is open

colorscheme nova

"============================================================
" Plugin Config
"============================================================

" pangloss/vim-javascript'
let g:jsx_ext_required = 0

" airline
let g:airline_powerline_fonts=1

let g:vim_jsx_pretty_colorful_config = 1

" ctrlpvim/ctrlp.vim
let g:ctrlp_show_hidden=1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

" Don't show YCM's preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"============================================================
" Mappings
"============================================================

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Nerd Tree toggling
map <C-b> :NERDTreeToggle<CR>

" OSX backspace fix
set backspace=indent,eol,start

" Remove Arrow Bindings
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
