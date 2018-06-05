set number

set ruler

set history=1000

set showcmd

set laststatus=2

syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8

colorscheme ashen

set t_Co=256

set guifont=Menlo:h12

set wildmenu

set nocompatible
set backspace=indent,eol,start
set backspace=2

set autoindent

set smartindent

set nobackup
set nowritebackup
set noswapfile

set tabstop=4

set softtabstop=4

set shiftwidth=4

set expandtab

set helplang=cn

set showmatch

set hlsearch

filetype on
filetype plugin on
filetype indent on

set cindent
set completeopt=longest,menu

set noeb

set autowrite

set cursorline

set cursorcolumn

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set clipboard+=unnamed

set autoread
set scrolloff=3

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'yggdroot/indentline'
Plugin 'Lokaltog/vim-powerline'
Plugin 'rhysd/vim-clang-format'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:indentLine_char='|'
let g:indentLine_enabled=1

let g:clang_format#auto_format_on_insert_leave=1

" NERDTree config
map <C-n> :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType)
