" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim +BundleInstall +qall

set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundle 'tpope/vim-rails.git'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'editorconfig/editorconfig-vim'

" NERDTree {
  map <C-e> :NERDTreeToggle<CR>
" }

Bundle 'Shougo/neocomplcache'
Bundle 'AutoClose'
Bundle 'kien/ctrlp.vim' 

Bundle 'bling/vim-airline'
" let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
" Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

" Bundle 'Lokaltog/powerline'
" let g:Powerline_symbols='unicode'

set laststatus=2
set encoding=utf8

Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jtai/vim-womprat'
Bundle 'chriskempson/base16-vim'

Bundle 'Lokaltog/vim-easymotion'
" solarized theme
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark
" colorscheme womprat

" Configure UI {
  let g:airline_theme='base16'
  set term=screen-256color
  set t_Co=256
  set background=dark
  let base16colorspace=256
  colorscheme base16-ocean
" }

Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'

" syntax highlighting
syntax on

set number
set autochdir

" auto reload while file is changed outside
set autoread

" Tab related
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab	" User spances instead of tabs

set list
set listchars=tab:\|\

set autoindent
set smartindent

set showcmd
set incsearch
set hlsearch
set paste

filetype plugin indent on




" autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
au Filetype python setl et ts=4 sw=4
au Filetype ruby setl et ts=2 sw=2

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
