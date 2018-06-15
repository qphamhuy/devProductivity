set nocompatible              " be iMproved, required
filetype off                  " required
set wildmenu
set mouse=a
set viminfo='20
set number
set clipboard=unnamedplus

syntax enable
set background=dark
" let g:solarized_termcolors=256
colorscheme monokai

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'

" Buffers
nnoremap bo :bro ol<CR> " recent files
nnoremap bd :bd<CR> " close buffer
nnoremap bn :bn<CR> " next buffer
nnoremap bp :bp<CR> " previous buffer

nnoremap tr :NERDTreeToggle<CR>

" CtrlP
nnoremap <Leader>t :CtrlP<CR>

" CtrlP
let g:ctrlp_map = '<Leader>t'

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Delete to register 0
nnoremap d "0d
nnoremap x "0x
nnoremap c "0c

" Case sensitivity
nmap <F9> :set ignorecase! ignorecase?<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
