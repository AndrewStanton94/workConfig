set nocompatible
set encoding=utf-8

"{{{
" vim's vimrc_example and msvim already sets up backup and swap
" set swap(.swp),backup(~),undo(.udf) directory to vim installation
" Please make sure the directory exists otherwise current directory will be used
" set dir=E:\\bak\\vim\\swp
" set backupdir=E:\\bak\\vim\\bak
" Remember the undo history for file, doesn't work with file collisions
" set udf
" set udir=E:\\bak\\vim\\undo
"}}}

set list
set listchars=tab:⇒\ ,eol:$
set list
set listchars=tab:⇒\ ,eol:•,trail:ᛋ
set showbreak=»»

set ff=unix

"{{{
set tabstop=4       " The width of a TAB is set to 4.  Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Spaces are better than a tab character
set smarttab
"}}}

"{{{
set incsearch
set hlsearch
set smartcase
set wrapscan
"}}}

set autoindent

"{{{
set cursorline
set cursorcolumn
set colorcolumn=80
hi ColorColumn ctermbg=darkred
"}}}

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

let g:netrw_browse_split=2

set matchpairs+=<:>
" runtime macros/matchit.vim

"{{{
autocmd BufEnter * setlocal number
autocmd BufLeave * setlocal nonumber
autocmd BufEnter * silent! lcd %:p:h

autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
" autocmd FileType perl set autowrite
"}}}

"{{{
inoremap jk <esc>
" These commands aren't written to undo history. <c-g>u fixes this.
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Each return is a new undo point
inoremap <CR> <C-G>u<CR>

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
"}}}

iab #C Copyright <C-r>=strftime("%Y")<CR> Smoothwall Ltd.
cab W w!
cab E e!

colorscheme harlequin

cd $HOME

set mouse=a

"{{{
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
Plugin 'https://github.com/godlygeek/tabular.git'
Plugin 'https://github.com/vim-perl/vim-perl.git'

	Plugin 'https://github.com/scrooloose/syntastic.git'
		" Syntastic Plugin Settings
		let g:syntastic_always_populate_loc_list = 1
		let g:syntastic_auto_loc_list = 1
		let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_wq = 0
		let g:syntastic_enable_balloons = 1
		let g:syntastic_mode_map = {
			\ "active_filetypes" : [],
			\ "passive_filetypes" : []
		\ }
		let g:airline#extensions#syntastic#enabled = 1

if has('unix')
		" "				" Syntastic - Perl Checker Settings
		let g:syntastic_enable_perl_checker = 1
		let g:syntastic_perl_checkers = [ 'perl', 'podchecker', 'perlcritic' ]
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

" let Tlist_Ctags_Cmd='C:\Program Files\ctags58\ctags.exe'
let Tlist_Auto_Update = 0
let Tlist_Display_Prototype = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Inc_Winwidth = 0	"Don't resize window on open taglist
let Tlist_Show_Menu = 1		"Gvim
" let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
"}}}

"{{{
function Alt0()
    " echo virtcol('.')
    if virtcol('.') != 1
        normal |
        " echo 'runining 0'
    else
        normal ^
        " echo 'runining ^'
    endif
endfunction

nnoremap 0 call Alt0()<cr>
nnoremap <k0> :call Alt0()<cr>
"}}}

 " vim:foldmethod=marker:
