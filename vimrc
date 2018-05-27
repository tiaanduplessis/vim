" ===[Basic Settings]===
filetype plugin indent on
syntax on
set hidden
set backspace=indent,eol,start
set encoding=utf-8
set number    
set relativenumber 
set nocompatible  
set autoindent
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set history=500
set path=$PWD/**
set wildignore+=**/node_modules/**
set conceallevel=0

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

" ===[Vundle]===

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins - BEGIN

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'


" Plugins - END
call vundle#end()  

" ===[Plugin Configuration]===

" pangloss/vim-javascript'
let g:jsx_ext_required = 0

" itchyny/lightline.vim
set noshowmode
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

" ===[Plugin Mappings]===

" scrooloose/nerdtree
map <C-e> :NERDTreeToggle<CR>

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
