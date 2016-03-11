" execute pathogen#infect()
" delimitMate
" indenLine
" jedi-vim
" MatchTag
" nerdtree
" supertab
" vim-nerdtree-tabs
call plug#begin('~/.vim/plugged')
" Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'w0ng/vim-hybrid'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'gregsexton/MatchTag'
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
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
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
set textwidth=0
set wrapmargin=0
set mouse=a
set background=dark
colorscheme hybrid
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" let terminal resize scale the internal windows
autocmd VimResized * :wincmd =
" Use arrow keys to resize windows
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>
" Keep search matches in the middle of the screen
nnoremap n nzz
nnoremap N Nzz
" Re-select visual block after indenting
vnoremap < <gv
vnoremap > >gv
" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
" Reselect the text you just entered
nnoremap gV `[v`]
" Set hyphens as part of the word when working on CSS files
au! FileType css,scss setl iskeyword+=-
" go substitute because the default map for sleeping is silly
nnoremap gs :%s//g<Left><Left>
" and here for those who have 'gdefault' enabled
nnoremap gs :%s//<Left>
" Copy to X CLIPBOARD
map <leader>cc :w !xsel -i -b<CR>
map <leader>cp :w !xsel -i -p<CR>
map <leader>cs :w !xsel -i -s<CR>
" Paste from X CLIPBOARD
map <leader>pp :r!xsel -p<CR>
map <leader>ps :r!xsel -s<CR>
map <leader>pb :r!xsel -b<CR>
set t_Co=256
if has("gui_running")
    set guioptions+=e
    set guitablabel=%M\ %t
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif
