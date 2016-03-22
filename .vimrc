set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle handle Vundle
Plugin 'gmarik/vundle'

" Plugin bundles
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/emmet-vim.git'
Bundle 'Valloric/MatchTagAlways'

" Language bundles
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-git'
Bundle 'digitaltoad/vim-jade'
Bundle 'elzr/vim-json'
Bundle 'groenewege/vim-less'

" Color scheme
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on

let mapleader=","

color jellybeans

syntax on

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=256
set ttyscroll=3
"set encoding=utf-8
"set fileencoding=utf-8
set tabstop=2
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set nohlsearch
set noundofile
set incsearch
set ignorecase
set smartcase
set lazyredraw
set splitbelow
set splitright
set scrolloff=4

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" No show command
autocmd VimEnter * set nosc

" Use space for :
noremap <space> :

" Tab between buffers
noremap <tab> <c-w><c-w>
noremap <s-tab> :bn<CR>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>

let NERDTreeMapOpenInTab='\t'
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', '.DS_Store']

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" CtrlP
nnoremap <silent> t :CtrlP<cr>
nnoremap <silent><leader>t :CtrlP<cr>
nnoremap <silent><leader>r :CtrlPMRUFiles<cr>
nnoremap <silent><leader>b :CtrlPBuffer<cr>

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 0
let g:ctrlp_max_files = 1000
let g:ctrlp_max_depth = 6
let g:ctrlp_root_markers = ['.git']

let g:user_emmet_expandabbr_key = '<leader>,'

filetype on

au BufReadPost Vagrantfile set syntax=ruby

"let g:ctrlp_user_command = {
"  \ 'types': { 1: ['.git/', 'cd %s && git ls-files'] },
"  \ 'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
"  \ }
