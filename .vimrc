set nocompatible
set encoding=utf-8
set wrap
set mouse=a                 " Enable mouse
set expandtab               " Tab setting 
set tabstop=4               " Tab setting 
set shiftwidth=4            " Tab setting
set listchars=tab:\¦\       " Tab charactor 
set list
set foldmethod=syntax         
set foldnestmax=1
set foldlevelstart=3        "  
set number                  " Show line number
set ignorecase              " Enable case-sensitive 
set hlsearch
" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
set synmaxcol=3000    "Prevent breaking syntax hightlight when string too long. Max = 3000"
set lazyredraw

syntax on

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

set termguicolors
let g:airline#extensions#tabline#enabled = 1

let $SHELL = 'C:\Program Files\Git\bin\bash.exe'
set shell=$SHELL
autocmd BufEnter NERD_tree_* | execute 'normal R'

" Hiển thị số tab nếu có nhiều hơn 1 tab
let g:airline#extensions#tabline#buffer_nr_show = 1

set guifont=Consolas:h14

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
