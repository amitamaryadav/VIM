" code to setup Vundle as package manager
" -------------------------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"cold fold
Plugin 'tmhedberg/SimpylFold'
"auto-completion stuff
Plugin 'Valloric/YouCompleteMe'
"python sytax checker
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
"colours
Plugin 'jnurmine/Zenburn'
"filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -------------------------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------

"enables syntax highlightin
syntax enable 

" enable all Python syntax highlighing features
let python_highlight_all=1
syntax on

"enable colour scheme
colorscheme zenburn

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za
"----------Stop python PEP 8 stuff--------------

" UI config
set nu
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
" custom keys - split window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:SimpylFold_docstring_preview=1   "to enable docstings
nnoremap <space> za

let g:ycm_autoclose_preview_window_after_completion=1 "autocomplete

" automatically open NERDTree upon opening a file
autocmd vimenter * NERDTree

