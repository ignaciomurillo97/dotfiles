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
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
filetype plugin on
syntax on
"Sudo guardadito pls
cmap w!! w !sudo tee > /dev/null %

"Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
Plug 'vim-latex/vim-latex'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
"Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

"Vim Latex
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'zathura'

"Theme
colorscheme molokai
let g:molokai_original = 1

"Remap leader key
let mapleader = ","

" Shortcuts
tnoremap ;l <C-\><C-N>

"nmap <Cr> o<Esc>
nmap <leader>o :only<Cr>

noremap <leader>f :FZF<Cr> 
noremap <leader>r :NERDTreeToggle<Cr> 
noremap <leader>t :tabedit term://bash<Cr>
noremap <leader>c :tabedit ~/.config/nvim/init.vim<Cr>

"Custom autoclose
inoremap [] []<Esc>i
inoremap [ []<Esc>i
inoremap [<Space> [<Space><Space>]<Esc>hi

inoremap {} {}<Esc>i
inoremap {<Space> {<Space><Space>}<Esc>hi
inoremap {<Cr> {<Cr>}<Esc>O

inoremap () ()<Esc>i
inoremap ( ()<Esc>i
inoremap (<Space> (<Space><Space>)<Esc>hi

inoremap "" ""<Esc>i
inoremap " ""<Esc>i

"Skip to next autolose
inoremap <C-Space> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
noremap <C-Space> /[)}"'\]>]<CR>:nohl<CR>

" add colon at end
inoremap <C-s> <Esc>A;
noremap <C-s> A;<Esc>
