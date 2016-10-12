set nocompatible
syntax on
filetype off

set directory=~/tmp/vim-swap
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'jamessan/vim-gnupg' " It get a lot of warning when I try to open -
" gpg file and I don't want decrypt them
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'erickzanardo/vim-xclip'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-unimpaired'
Plugin 'wting/rust.vim'
Plugin 'mustache/vim-mustache-handlebars'

" Status bar plugin (vim-airline)
let g:airline_left_sep = ''
let g:airline_right_sep = ''

call vundle#end()            " required
filetype plugin indent on    " required

call pathogen#infect()

" Few configurations:
set hlsearch " Highlight search results
set encoding=utf8
set background=dark
set ffs=unix,dos,mac
set modeline
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set laststatus=2
set cpoptions+=n
set number
set vb
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE

" CtrlP to ignore
set wildignore+=*.swp,*.pyc
let g:ctrlp_show_hidden = 1

" NerdTree show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$']

" Set Tab as 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Cursor line higlight
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Short cuts:
let mapleader=","
map <C-]> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind<CR>         " Open NERDTree and focus on current file
map <F5> :e!<CR>                    " force reload current file
map <F6> :CtrlPClearAllCaches<CR>   " clear all CtrlP cache
map <leader>W :w<CR>
map <leader>w :wincmd k<CR>        " go window up
map <leader>s :wincmd j<CR>        " go window down
map <leader>a :wincmd h<CR>        " go window left
map <leader>d :wincmd l<CR>        " go window right
map <leader>v :vertical :new<CR>   " open new vertical window
map <leader>h :new<CR>             " open a new horizontal window
map <leader>q :q<CR>               " it quit current vim buffer
map <leader>Q :q!<CR>              " it force quit current vim buffer
map <leader>n :tabnew<CR>          " create a new tab
map <leader>z :tabprevious<CR>     " move to previous tab
map <leader>x :tabnext<CR>         " move to next tab
map <leader>y :call system('xclip -selection clipboard', @0)<CR>  " move last yank selection to xclip
map <leader>b :CtrlPBuffer<cr>
map <leader>t :CtrlPTag<cr>
