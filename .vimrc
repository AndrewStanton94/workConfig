set nocompatible
set encoding=utf-8

set ff=unix

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
set ruler
set wildmenu
set wildmode=longest,full
set ignorecase
set smartcase
set autoread                  " watch for file changes
set showmode
set showcmd
" filetype on                   " Enable filetype detection
" filetype indent on            " Enable filetype-specific indenting
" filetype plugin on            " Enable filetype-specific plugins
syntax enable

set backspace=indent,eol,start

set showbreak=»»

set guioptions-=T
set guioptions-=e
set linespace=5

" set spell

set autoread

autocmd BufEnter * setlocal number
autocmd BufLeave * setlocal nonumber
autocmd BufEnter * silent! lcd %:p:h

autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
" autocmd FileType perl set autowrite

inoremap jk <esc>

noremap j gj
noremap k gk
noremap Y y$
noremap <F2> :e $MYVIMRC<CR>
noremap <S-F2> :so $MYVIMRC<CR>:echo "Config reloaded"<CR>
noremap <F8> :Explore<CR>
noremap <F9> :TlistToggle<CR>

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

set mouse=a


" set the runtime path to include Vundle and initialize
if has('win32')
	set rtp+=~/vimfiles/bundle/Vundle.vim
else
	set rtp+=~/.vim/bundle/Vundle.vim
endif
" has('gui_running')

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'https://github.com/tpope/vim-obsession.git'
Plugin 'https://github.com/tpope/vim-dispatch.git'
Plugin 'https://github.com/chrisbra/changesPlugin.git'
Plugin 'https://github.com/chrisbra/Colorizer.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
if has('unix')
	Plugin 'https://github.com/tpope/vim-eunuch.git'
	Plugin 'https://github.com/tpope/vim-tbone.git'
endif

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'bad-whitespace'
Plugin 'surround.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" autocmd VimEnter * PluginUpdate

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:colorizer_auto_filetype='css,html,php,vim'
set omnifunc=syntaxcomplete#Complete
