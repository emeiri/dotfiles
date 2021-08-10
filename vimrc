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
set cursorline
set showmatch
set splitbelow splitright
set wildmode=longest,list,full

filetype plugin indent on
syntax on
set backspace=start,eol,indent
set hidden
set path+=**

"if has('mouse')
"	set mouse=a
"endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/neoclide/coc.nvim', {'branch':'release'}
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/chengzeyi/fzf-preview.vim'
Plug 'https://github.com/gruvbox-community/gruvbox'
Plug 'https://github.com/vim-scripts/indentpython.vim'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/nvie/vim-flake8'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/szw/vim-maximizer'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/frazrepo/vim-rainbow'
Plug 'https://github.com/lyuts/vim-rtags'
Plug 'https://github.com/kshenoy/vim-signature'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/pelodelfuego/vim-swoop'
Plug 'https://github.com/puremourning/vimspector'
Plug 'https://github.com/nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
"Plug 'https://github.com/nvim-telescope/telescope.nvim'
"Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim'

:runtime! ftplugin/man.vim

call plug#end()

let mapleader = " "

map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

nnoremap <F1> :FZFBuffers<cr>
nnoremap <F2> :FZFGFiles<cr>
nnoremap <F3> :cprevious<cr>
nnoremap <F4> :cnext<cr>
nnoremap <F9> :mak<cr>
nnoremap <C-F6> :w \|!!<cr>
"nnoremap <C-F6> :call ExecShell()<cr>
"nnoremap <C-F6> :!<up>
nnoremap <F7> :make<cr>
nnoremap <c-s-f> :FZFAg 
inoremap <silent> <Up> <ESC><Up>
inoremap <silent> <Down> <ESC><Down>
noremap j gj
noremap k gk
noremap Y ^y$
nn yaf ?function<CR>$V%y<CR>

nnoremap <leader>m :MaximizerToggle!<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"noremap <C-H> :tabp<CR>
"noremap <C-L> :tabn<CR>
"noremap <C-J> :tabc<CR>
"noremap <C-K> :tabe<CR>

nmap <leader>gd <Plug>(coc-definition)

nnoremap <silent> <Leader>> :exe "vertical resize +25"<CR>
nnoremap <silent> <Leader>< :exe "vertical resize -25"<CR>
nnoremap <leader>c :cclose<CR>
nnoremap <leader>o :vert copen<cr>
nnoremap <leader>dr $T=dt;i
vnoremap <leader>p "_dP
nnoremap <leader>r f=ll
nnoremap <leader>s :!clear && shellcheck %<CR>

nnoremap <c-a> :FZFBLines<cr>

"nnoremap <CR> :nohlsearch<cr>
let g:UltiSnipsExpandTrigger="<tab>"

let g:rainbow_active = 1


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

let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_max_files=0
let g:ctrlp_use_caching = 0
let g:ctrlp_max_depth = 40


let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:vimspector_enable_mappings = 'HUMAN'

set term=screen-256color

if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

set statusline+=%F

let g:coc_disable_startup_warning = 1
let g:coc_node_path = "~/node-v14.17.0-linux-x64/bin/node"

let g:fzf_command_prefix = 'FZF'
set background=dark
colorscheme gruvbox

autocmd! VimLeave * mksession! ~/.session.vim 
autocmd! VimEnter * source ~/.session.vim
