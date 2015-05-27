call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'w0ng/vim-hybrid'
Plug 'myusuf3/numbers.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/emmet-vim'
Plug 'suan/vim-instant-markdown'
Plug 'klen/python-mode'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
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
set t_Co=256
set background=dark
colorscheme hybrid
set pastetoggle=<f5>
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
