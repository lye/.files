set nocompatible
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set number
set visualbell

set shiftwidth=4
set tabstop=4

set foldmethod=indent

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Syntax highlighting bits
syntax on
set hlsearch
colorscheme piety
set background=dark

filetype off
execute pathogen#infect()

" File-specific bits
filetype on
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
