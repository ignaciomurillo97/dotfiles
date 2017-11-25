" Settings
set ts=3
set tabstop=3
set shiftwidth=3
set number
set relativenumber
set incsearch
set autoindent
set smartindent
set expandtab
set clipboard=unnamedplus
syntax on

" Pluggins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
Plug 'wikitopian/hardmode'
Plug 'Raimondi/delimitMate'
Plug 'vim-latex/vim-latex'
Plug 'altercation/vim-colors-solarized'
Plug 'skammer/vim-css-color'

call plug#end()

"Vim Latex
filetype plugin on
set grepprg=grep\ -nH\ $*

"Theme
set background=dark
highlight Normal ctermbg=none
hi noneText ctermbg=none
colorscheme solarized

"Hard Mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Shortcuts
imap ;l <Esc>
