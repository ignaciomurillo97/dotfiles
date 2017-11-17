"Settings
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
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

"Sudo guardadito pls
cmap w!! w !sudo tee > /dev/null %

"Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-latex/vim-latex'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'

call plug#end()

"Vim Latex
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'zathura'

"Theme
set background=dark
colorscheme solarized

"Remap leader key
let mapleader = ","

" Shortcuts
tnoremap ;l <C-\><C-N>

"nmap <Cr> o<Esc>
nmap <leader>o :only<Cr>

noremap <leader>f :FZF<Cr> 
noremap <leader>r :NERDTreeToggle<Cr> 
noremap <leader>t :tabedit term://bash<Cr>

imap ;l <Esc>
