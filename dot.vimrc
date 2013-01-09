if has("gui_running")
	source $VIMRUNTIME/gvimrc_example.vim
else
    source $VIMRUNTIME/vimrc_example.vim
endif

" Basic stuffs
set nowrap
set wildmenu
set hidden
set number

" Search
set ignorecase
set smartcase

" Backups
set nobackup
set nowritebackup
set noswapfile
set autoread

" Indentation
set smartindent

if has("gui_running")
		set guioptions-=T
        set guioptions-=m
        set cursorline
        colorscheme zellner
endif

" Use system clipboard
if has("win32")
    set clipboard=unnamed
else
    if has("unnamedplus")
        set clipboard=unnamedplus
    endif
endif

" Russian support (use Ctrl+6 to change language in insert mode)
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" Encodings
set fileencoding=utf8
set fileencodings=utf8,cp1251,default

" Tab\space settings
set ts=4 sts=4 sw=4 noexpandtab

autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab