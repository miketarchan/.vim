" Plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'mhinz/vim-startify'
	Plug 'airblade/vim-gitgutter'
	Plug 'morhetz/gruvbox'
" Initialize plugin system
call plug#end()

" Enable Color Scheme
colorscheme gruvbox
set background=dark

filetype plugin indent on 
syntax on
set nocompatible "  no compatible with old vi
set encoding=utf-8
set clipboard=unnamedplus
" set spell spelllang=en_us
set path+=**
set rnu
set ruler
set cursorline
set hlsearch
set incsearch
set expandtab
set tabstop=2

" Fix clipboard 
if system('uname -s') == "Darwin\n"
	set clipboard=unnamed "OSX
  else
	set clipboard=unnamedplus "Linux
endif

" Open new Tab by ,t
nmap ,t :tabnew<CR>

" Toggle NERDTree Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Autosaver TODO: test if it' working
autocmd FocusLost * :wa
