" -------------------------------------------------------------------------------------------

"enables syntax highlightin
syntax enable 

" enable all Python syntax highlighing features
let python_highlight_all = 1

"enable colour scheme
colorscheme pablo 

"to enable backspace in INSERT mode
set backspace=indent,eol,start 

" Spaces & Tabs
set tabstop=4 		"1 tab == 4 spaces instead of default 8 spaces
set expandtab 		"tabs would be converted to spaces
" indent when moving to the next line while writing code
set autoindent
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" UI config
set number
" set cursorline

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()]
set showmatch

" searching
set incsearch
set hlsearch

" split position
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
