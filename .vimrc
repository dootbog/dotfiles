set nocompatible
set number
set noerrorbells
set belloff=all
set mouse=a
set noswapfile
set hidden
set encoding=utf-8
set ruler
set cursorline
set autoread
set history=1000
set sidescroll=1
set sidescrolloff=15
set wildmenu
set backspace=indent,eol,start
set laststatus=2
set wrap linebreak
set showbreak=" "
set nrformats-=octal

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

if has('syntax')
  syntax enable
endif

" Tabbing
" set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
" Turn on filetype plugins (:help filetype-plugin).
if has('autocmd')
  filetype plugin indent on
endif
filetype plugin on

set nocp "enable netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
map <C-n> :Lexplore<CR>


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
"autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \| PlugInstall --sync | source $MYVIMRC
"\| endif

call plug#begin('~/.vim/plugged')
Plug 'pacha/vem-tabline'
Plug 'vim-airline/vim-airline'
"Plug 'w0rp/ale'
"Plug 'phpstan/vim-phpstan'
"Plug 'stanangeloff/php.vim'
call plug#end()

"ale
let g:ale_linters = {'php': ['phpstan']}

"The <leader> key is mapped to \ by default
"vem-tablin
let g:vem_tabline_show_number = "buffnr"
nmap <leader>< <Plug>vem_move_buffer_left-
nmap <leader>> <Plug>vem_move_buffer_right-
nmap <leader>gT <Plug>vem_prev_buffer-
nmap <leader>gt <Plug>vem_next_buffer-
nmap <leader>x <Plug>vem_delete_buffer-

