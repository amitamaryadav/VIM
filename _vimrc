
"enables syntax highlightin
syntax enable 

"enable colour scheme
colorscheme molokai 
let g:molokai_original = 1

"to enable backspace in INSERT mode
set backspace=indent,eol,start 

" Spaces & Tabs
set tabstop=4 		"1 tab == 4 spaces instead of default 8 spaces
set expandtab 		"tabs would be converted to spaces

" UI config
set number
set cursorline

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()]
set showmatch

" searching
set incsearch
set hlsearch

