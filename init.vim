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
set textwidth=80
set formatoptions+=w
set splitright
set splitbelow
set mouse=a
g:loaded_python_provider=1
let g:tex_flavor='latex'
let NERDTreeQuitOnOpen=1
filetype plugin on
syntax on

"Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'vim-latex/vim-latex'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sophacles/vim-processing'
Plug 'wincent/scalpel'
Plug 'neomake/neomake'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'tpope/vim-eunuch'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"Vim Latex
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'zathura'

"Remap leader key
let mapleader = " "
let maplocalleader = ","

" Theme
source ~/.config/nvim/colorscheme.vim

"Custom autoclose
source ~/.config/nvim/autoclose.vim

" Mappings
source ~/.config/nvim/mappings.vim

" Auto populate files:
   " vimrc
command! ReSauce :source ~/.config/nvim/init.vim

   " processing:
augroup processing
   autocmd!
   autocmd BufNewFile,BufReadPost *.pde source ~/.config/nvim/ftplugin/processig.vim
augroup END

" quickfix window
au FileType qf wincmd J 

" execute after plugins load
augroup vimenter
   autocmd!
   autocmd VimEnter * nnoremap <C-J> <C-W><C-J>
   autocmd VimEnter * nnoremap <C-K> <C-W><C-K>
   autocmd VimEnter * nnoremap <C-L> <C-W><C-L>
   autocmd VimEnter * nnoremap <C-H> <C-W><C-H>
augroup END

" Move VISUAL LINE selection within buffer.
xnoremap <silent> K :call nacho#visual#move_up()<CR>
xnoremap <silent> J :call nacho#visual#move_down()<CR>
