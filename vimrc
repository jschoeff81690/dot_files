colorscheme slate
set hidden	"can change buffers without writing, stores changes
set backspace=indent,eol,start	"makes backspace act like normal
set ruler  
set tabstop=4	"tab = 4 spaces
set showcmd
set number		"show line numbers
set showmatch	"show matching parenthesis
set autoindent
set copyindent		"copy previous indentation for auto indent
set shiftwidth=4	"spaces to autoindent
set smarttab		"inset tabs on beginning of line using shiftwidth

set history=1000 	"commands and search history
set undolevels=1000	"number o fhistory for undo
set title 			"terminal title

set nobackup
set noswapfile

"Set shortcut mappings
nnoremap ; :

filetype plugin on
syntax on

