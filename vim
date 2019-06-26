sudo apt remove vim
sudo apt install vim-gtk

vim .vimrc:

filetype plugin on
set noswapfile
set clipboard=unnamedplus
set expandtab
set wildmenu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search Highlight
let mapleader=","       " leader is comma
nnoremap <leader><space> :nohlsearch<cr>
" move to beginning/end of line
nnoremap B ^
vnoremap B ^
vnoremap E $
nnoremap E $
set cursorline          " highlight current line
" Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jk <esc>
set runtimepath^=~/.vim/bundle/ag
" open ag.vim
nnoremap <leader>a :Ag
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
set number              " show line numbers
syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
nnoremap <C-h> <C-B>
nnoremap <C-l> <C-F>
set clipboard=unnamedplus
set completeopt-=preview
map <C-]> :YcmCompleter GoTo<CR>
map <C-\> :YcmCompleter GetDoc<CR>


install vundle
(github see https://github.com/VundleVim/Vundle.vim)
mkdir -p .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

install YCM youcompleteme
(github see https://github.com/Valloric/YouCompleteMe)
sudo apt install build-essential cmake python3-dev
git clone --depth=1 https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
 
solarized
(github see https://github.com/altercation/vim-colors-solarized)
mkdir ~/.vim/colors
cd ~/.vim/colors
git clone git://github.com/altercation/vim-colors-solarized.git
cp vim-colors-solarized/colors/solarized.vim .

using vimium
