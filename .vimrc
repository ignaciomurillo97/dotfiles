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
Plug 'rakr/vim-two-firewatch'
Plug 'vim-latex/vim-latex'

call plug#end()

"Vim Latex
filetype plugin on
set grepprg=grep\ -nH\ $*


"Hard Mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Theme
set background=dark " or light if you prefer the light version
let g:two_firewatch_italics=1
colo two-firewatch
highlight Normal ctermbg=NONE

" Shortcuts
imap ;l <Esc>
