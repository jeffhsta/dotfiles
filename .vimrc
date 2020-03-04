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
Plugin 'rust-lang/rust.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tfnico/vim-gradle'
Plugin 'itchyny/lightline.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-endwise'
Plugin 'slashmili/alchemist.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'rhysd/vim-crystal'
Plugin 'mhinz/vim-startify'
Plugin 'joshdick/onedark.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'soramugi/auto-ctags.vim'

" Status bar plugin (lightline)
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

call vundle#end()            " required
filetype plugin indent on    " required

call pathogen#infect()
colorscheme onedark

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Ctags settings
let g:auto_ctags = 1
let g:auto_ctags_tags_args = ['--tag-relative=yes', '--recurse=yes', '--sort=yes', '--exclude=node_modules']

" Few configurations:
set nowrap
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
set relativenumber
set vb
set ignorecase
set clipboard=unnamed
set ttyfast
set lazyredraw
set novisualbell
set incsearch
set colorcolumn=100
hi ColorColumn ctermbg=darkgrey
set wildmenu
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE
hi CursorLineNR cterm=bold ctermfg=206

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" CtrlP to ignore
set wildignore+=*.swp,*.pyc,*.class,.venv,node_modules,deps,_build,dist
let g:ctrlp_show_hidden = 1

" NerdTree show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$', '\.class$', '^_build$', '^deps$']

" JSX syntax on .js files
let g:jsx_ext_required = 0

" Set Tab as 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Cursor line higlight
highlight CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
set cursorline

" Custom commands:
com! FormatJSON %!python -m json.tool

" Short cuts:
let mapleader=","
map <C-\> :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>        " Open NERDTree and focus on current file
map <leader>e :e!<CR>                  " force reload current file
map <leader>c :CtrlPClearAllCaches<CR> " clear all CtrlP cache
map <leader>\| :vertical :new<CR>      " open new vertical window
map <leader>- :new<CR>                 " open a new horizontal window
map <leader>n :tabnew<CR>              " create a new tab
map <leader>b :CtrlPBuffer<CR>         " Clear CtrlP buffers
map <leader>h :noh<CR>                 " no hightlight
