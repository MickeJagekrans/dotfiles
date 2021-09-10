set nocompatible
filetype off

call plug#begin()

" Plugins
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'mileszs/ack.vim'

" Language plugins
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'

" Color scheme
Bundle 'nanotech/jellybeans.vim'

call plug#end()

let mapleader=","

" let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
" let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
" let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise]]]

color jellybeans

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=256
set ttyscroll=3
set tabstop=2
set number
set noswapfile
set nohlsearch
set noundofile
set nobackup
set nowritebackup
set incsearch
set ignorecase
set smartcase
set lazyredraw
set splitbelow
set splitright
set scrolloff=4
set autochdir
set backspace=indent,eol,start
set mouse=a

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Use ripgrep for searching
if executable("rg")
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

filetype plugin indent on	
syntax enable

" No show command
autocmd VimEnter * set nosc

" Use space for :
noremap <space> :

" Tab between buffers
noremap <tab> <c-w><c-w>
noremap <s-tab> :bn<CR>

" Nav between buffers
nnoremap <c-left> :tabprevious<cr>
nnoremap <c-right> :tabnext<cr>
nnoremap <c-j> :tabprevious<cr>
nnoremap <c-k> :tabnext<cr>

" CtrlP
nnoremap <silent> t :CtrlP<cr>
nnoremap <silent><leader>t :CtrlP<cr>
nnoremap <silent><leader>r :CtrlPMRUFiles<cr>
"nnoremap <silent><leader>b :CtrlPBuffer<cr>

"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0

let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 0
let g:ctrlp_max_files = 1000
let g:ctrlp_max_depth = 6
let g:ctrlp_root_markers = ['.git']

filetype on
