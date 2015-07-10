set nocompatible
execute pathogen#infect()
set encoding=utf-8

set tabstop=4       " The width of a TAB is set to 4.  Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
" set expandtab       " Spaces are better than a tab character
set smarttab

set incsearch
set hlsearch
set smartcase
set wrapscan

set autoindent

set cursorline
set cursorcolumn

set laststatus=2
set wildmenu
set wildmode=longest,full
set ignorecase
set smartcase
set autoread                  " watch for file changes
set showmode
set showcmd
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
syntax enable

set backspace=indent,eol,start

set guioptions-=T
set linespace=5

autocmd BufEnter * setlocal number
autocmd BufLeave * setlocal nonumber

inoremap jk <esc>

noremap Y y$
noremap <F2> :e $MYVIMRC<CR>
noremap <S-F2> :so $MYVIMRC<CR>:echo "Config reloaded"<CR>
noremap <F8> :NERDTreeToggle<CR>

noremap <Left> <C-w>h
noremap <Right> <C-w>l
noremap <Up> <C-w>k
noremap <Down> <C-w>j
noremap <S-Left> <C-w>H
noremap <S-Right> <C-w>L
noremap <S-Up> <C-w>K
noremap <S-Down> <C-w>J
noremap <c-Left> :tabNext<CR>
noremap <c-Right> :tabnext<CR>
noremap <c-Tab> :tabnext<CR>
noremap <c-Up> :tabnew<CR>
noremap <c-Down> <C-w>c

noremap <C-S-Up> ddkP
noremap <C-S-Down> ddp

noremap <leader>p "+p

iab #C Copyright <C-r>=strftime("%Y")<CR> Smoothwall Ltd.

colorscheme harlequin

cd $HOME
