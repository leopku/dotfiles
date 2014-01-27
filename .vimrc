" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim +BundleInstall +qall

set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmark/vundle'

" Bundle 'tpope/vim-rails.git'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache'
Bundle 'AutoClose'
Bundle 'kien/ctrlp.vim' 
Bundle 'Lokaltog/vim-powerline'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'jtai/vim-womprat'

filetype plugin indent on


" NERDTree {
  map <C-e> :NERDTreeToggle<CR>
" }


" vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

" solarized theme
" set t_Co=256
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark
colorscheme womprat

" syntax highlighting
syntax on

set number
set autochdir

" auto reload while file is changed outside
set autoread

" Tab related
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab	" User spances instead of tabs

set list
set listchars=tab:\|\

set autoindent
set smartindent

set showcmd
set incsearch
set hlsearch
set paste

" autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
au Filetype python setl et ts=4 sw=4
au Filetype ruby setl et ts=2 sw=2
