" Installing Plugin Manager if needed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
        Plug 'tpope/vim-surround'
        Plug 'ap/vim-css-color'
        Plug 'editorconfig/editorconfig-vim'
" Initialize plugin system
call plug#end()

" Enable Color Scheme
colorscheme gruvbox
set background=dark

filetype plugin indent on 
syntax on
" No compatible with old vi
set nocompatible
set encoding=utf-8
" set spell spelllang=en_us

" Added for quick find(ing)
set path+=**
" Relative Number
set rnu

set ruler
set cursorline
" set hlsearch
set incsearch
set expandtab
" set tabstop=2

" Disable bell
set noerrorbells

" Allow to use backspace for deleting evything you need
set backspace=indent,eol,start

" Displays the completion matches in status line
set wildmenu

" Automatically save the changes
set autowrite

" Add mouse
if has('mouse')
  set mouse=a
endif

" Scrolloff feature. This option make the gap at the top and at the bottom
" while scrolling
set so=10 

" Open new Tab by ,t
nmap ,t :tabnew<CR>
" close the tabi
nnoremap <C-J> :tabc<CR> 
" switch to next tab
nnoremap <C-L> :tabn<CR>
" switch to previous tab
nnoremap <C-H> :tabp<CR>

" Working with buffers
" nnoremap <C-S-H> <C-W><C-H> 
" nnoremap <C-S-J> <C-W><C-J>
" nnoremap <C-S-K> <C-W><C-K>
" nnoremap <C-S-L> <C-W><C-L>


" Fix clipboard 
if system('uname -s') == "Darwin\n"
	set clipboard=unnamed "OSX
  else
	set clipboard=unnamedplus "Linux
endif

" Toggle NERDTree Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Command to quickly open this file
command! Config execute "e $MYVIMRC"
"Command to quick reload the vim configuration
command! Reload execute "so $MYVIMRC"
