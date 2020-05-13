set autoindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set nocompatible
set smartcase
set tabstop=4
set winwidth=110

filetype plugin on
syntax on



nnoremap <CR> :nohlsearch<cr>

" if has('mouse')
"	set mouse=a
" endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/indentpython.vim'
" Plug 'ycm-core/YouCompleteMe'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

nnoremap <F2> :FZF<cr>
nnoremap <c-s-f> :Ack
inoremap <silent> <Up> <ESC><Up>
inoremap <silent> <Down> <ESC><Down>
noremap j gj
noremap k gk

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

