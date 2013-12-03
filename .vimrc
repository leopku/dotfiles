
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible
set paste

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmark/vundle'

Bundle 'tpope/vim-rails.git'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache'
Bundle 'AutoClose'
Bundle 'kien/ctrlp.vim' 
Bundle 'Lokaltog/vim-powerline'


filetype plugin indent on


" NERDTree {
  map <C-e> :NERDTreeToggle<CR>
" }


" vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

