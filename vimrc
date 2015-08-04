call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'w0ng/vim-hybrid'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
call plug#end()
syntax on
filetype plugin indent on
filetype indent on
set number
imap jk <Esc>
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nmap ; :
cmap w!! w !sudo tee % > /dev/null
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set wildmenu
set foldenable
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
set pastetoggle=<f5>
set t_Co=256
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
