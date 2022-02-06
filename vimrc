call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'nelsyeung/twig.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'cormacrelf/vim-colors-github'
Plug 'ap/vim-buftabline'
Plug 'hrsh7th/vim-vsnip'
Plug 'Yggdroot/indentLine'
call plug#end()
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
filetype plugin indent on
filetype indent on
imap jk <Esc>
nnoremap <leader><space> :nohlsearch<CR>
nmap ; :
cmap w!! w !sudo tee % > /dev/null
set nu
set cursorline
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
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
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
nmap <F8> :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>
map <C-n> :NERDTreeToggle<CR>
if has("gui_running")
    "set guifont=Hack:h22
    set guifont=Menlo:h12
    set guioptions+=e
    set guitablabel=%M\ %t
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
colorscheme github
let g:lightline = { 'colorscheme': 'github' }
set background=light
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <right> :bnext<CR>
nnoremap <left> :bprev<CR>
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
set encoding=utf-8

