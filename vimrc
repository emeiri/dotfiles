set autoindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nu
set relativenumber
set smartcase
set smartindent
set shiftwidth=4
set softtabstop=4
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set winwidth=110

filetype plugin on
syntax on




" if has('mouse')
"	set mouse=a
" endif

call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/indentpython.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'nvie/vim-flake8'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
" Plug 'ycm-core/YouCompleteMe'
"Plug 'Valloric/YouCompleteMe'
Plug 'lyuts/vim-rtags'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

let mapleader = " "
nnoremap <F2> :FZF<cr>
nnoremap <c-s-f> :Ack
inoremap <silent> <Up> <ESC><Up>
inoremap <silent> <Down> <ESC><Down>
noremap j gj
noremap k gk
noremap Y ^y$

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <C-H> :tabp<CR>
noremap <C-L> :tabn<CR>
noremap <C-J> :tabc<CR>
noremap <C-K> :tabe<CR>

nmap <leader>gd <Plug>(coc-definition)

nnoremap <silent> <Leader>> :exe "vertical resize +25"<CR>
nnoremap <silent> <Leader>< :exe "vertical resize -25"<CR>

nnoremap <CR> :nohlsearch<cr>
let g:UltiSnipsExpandTrigger="<tab>"

let g:rainbow_active = 1

set background=dark
colorscheme gruvbox

" Enable folding
set foldmethod=indent
set foldlevel=99

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
let python_highlight_all=1

"the following doesn't work...
"autocmd FileType html inoremap ;p <p></p><Esc>FpT>i

if executable('rg')
    let g:rg_derive_root='true'
endif

"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_max_files=0
let g:ctrlp_use_caching = 0
let g:ctrlp_max_depth = 40


let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

