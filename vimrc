execute pathogen#infect()

" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable
set background=dark
colorscheme solarized

filetype on
filetype plugin indent on


set autoindent
set autowrite                         " auto write files before commands like :next and :make
set showmatch                         " show matching parens
set autoread			      " reload files when changed on disk
set backspace=indent,eol,start
set clipboard=unnamed		      " yank and paste with the system clipboard
set directory-=.		      " don't store swapfiles in current directory
set expandtab			      " expand tabs to spaces
set ignorecase			      " case-insensitive search
set incsearch			      " search as you type
set number			      " show line numbers
set ruler			      " show where you are
set shiftwidth=2		      " normal mode indentation == 2 spaces
set shiftround
set splitright                        " vertical split goes right by default
set wrap                              " text wrapping
set magic                             " regex magic
set showcmd
set smarttab                          " sw at the start of a line, sts everywhere else
set smartcase			      " case-sesitive search if any caps present
set softtabstop=2		      " inset mode tab and backspace == 2 spaces
set tabstop=8			      " actual tabs == 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,.rbc
set wildmenu			      " show a navigable menu for tab completion
set wildmode=longest,list,full

" No swap files because of VCS (i.e. Git)
set noswapfile
set nobackup
set nowb

" Keyboard shortcuts
let mapleader = ','
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>a :Ag<space>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :GitGutterToggle<CR>

" Plugin settings
let g:airline_powerline_fonts=1
let g:NERDSpaceDelims=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:gitgutter_enabled=0
let g:web_devicons_enable_nerdtree=1
let g:wedevicons_enable_airline_statusline=1

autocmd BufWritePre * :%s/\s\+$//e    " remove trailing whitespace on save

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
