set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required

filetype plugin indent on 

colorscheme gruvbox

syntax enable
set ruler
set hidden
set relativenumber
set smartindent

":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar

" Nerdtree maping
map <C-o> :NERDTreeToggle<CR>

" Fzf mapping 
map ; :Files<CR>

" Indent with selection
vnoremap < <gv
vnoremap > >gv 

" Shadow files disabled
set nobackup
set nowritebackup
set noswapfile
