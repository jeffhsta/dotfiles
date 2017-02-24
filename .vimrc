set nocompatible
syntax on
filetype off

set directory=~/tmp/vim-swap
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'jamessan/vim-gnupg' " It get a lot of warning when I try to open -
" gpg file and I don't want decrypt them
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
Plugin 'tfnico/vim-gradle'
Plugin 'itchyny/lightline.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mxw/vim-jsx'

" Status bar plugin (lightline)
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"RO":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

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
set ignorecase
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE

" CtrlP to ignore
set wildignore+=*.swp,*.pyc,*.class,.venv,node_modules
let g:ctrlp_show_hidden = 1

" NerdTree show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$', '\.class$']

" JSX syntax on .js files
let g:jsx_ext_required = 0

" Set Tab as 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Cursor line higlight
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Short cuts:
let mapleader=","
map <C-]> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind<CR>            " Open NERDTree and focus on current file
map <leader>e :e!<CR>                  " force reload current file
map <leader>c :CtrlPClearAllCaches<CR> " clear all CtrlP cache
map <leader>v :vertical :new<CR>       " open new vertical window
map <leader>h :new<CR>                 " open a new horizontal window
map <leader>n :tabnew<CR>              " create a new tab
map <leader>b :CtrlPBuffer<CR>         " Clear CtrlP buffers
map <leader>t :CtrlPTag<CR>            " List tags
map <leader>d :bdelete<CR>             " Delete current buffer
map <leader>y :call system('xclip -selection clipboard', @0)<CR>  " move last yank selection to xclip
