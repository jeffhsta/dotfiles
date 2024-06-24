vim.g.mapleader = " "

vim.cmd("set clipboard=unnamedplus")
vim.cmd("set cursorline")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoread")
vim.cmd("autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif")
vim.cmd("autocmd FileChangedShellPost * echohl WarningMsg | echo 'File changed on disk. Buffer reloaded.' | echohl None")

vim.keymap.set('n', '<C-s>', ":w<CR>")
vim.keymap.set('n', '<leander>n', ':noh<CR>')
-- vim.cmd("set highlight cursorline")
