set mouse=a "enable mouse in vim
set incsearch "always one line above and below cursor
set hidden	"can change buffers without writing, stores changes
set backspace=indent,eol,start	"makes backspace act like normal
set ruler  
set showcmd
set number		"show line numbers
set showmatch	"show matching parenthesis
set autoindent
set smartindent
set wrap
set expandtab
set shiftwidth=4	"spaces to autoindent
set tabstop=4	"tab = 4 spaces
set smartcase   " for searching, if you use caps it will look for caps
set ignorecase  " Whenn searching it will ignore caps, if you use caps then ^smart case will make it look for caps
set history=1000 	"commands and search history
set undolevels=1000	"number o fhistory for undo

" These remove backups, annoying files but if vim crashes you lose changes..
set nobackup
set noswapfile

set pastetoggle=<F2>    " Toggle paste with F2
set columns=90          " Wrap at 90
set numberwidth=6       " Width of number bar
set colorcolumn=90      " Shows column at 90 char
set cursorline          " Highlights current line

" Enable plugins and pathogen
filetype plugin on
syntax on
execute pathogen#infect()

" Theme
set background=dark
colorscheme PaperColor


" with a map leader it's possible to do extra key combinations
"  like <leader>w saves the current file
 nnoremap ; :
 let mapleader = ","
 let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q <c-z>
nmap <leader>x :q!<cr>
nmap <leader>wq :wq!<cr>

" Tabs > Buffers
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
nnoremap <Leader>p :tabp<cr>
nnoremap <Leader>n :tabn<cr>


"Fast Search and replace
nmap fr :%s/

"List registers
nmap <leader>r :reg<cr>

"EASYMOTION MAPS
" Gif config
 map  / <Plug>(easymotion-sn)
 omap / <Plug>(easymotion-tn)

" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
 map  n <Plug>(easymotion-next)
 map  N <Plug>(easymotion-prev)

" change the default EasyMotion shading to something more readable with Solarized
" easymotion highlight colors
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First ErrorMsg
hi link EasyMotionTarget2Second ErrorMsg
hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

" Set Mouse commands mm no vim mouse, ma use mouse
nmap mm :set mouse=<cr>
nmap ma :set mouse=a<cr>

"CTRL-P FUZZY FINDER MAPS
" ff launch ctrlP, enter opens in tabs
nmap ff <c-p>
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

"NERDTREE
nmap nt :NERDTreeToggle<cr>

"TagBar
nmap tt :TagbarToggle<CR>

"Neocomplete
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

autocmd! FileType c,cpp,java,php call CSyntaxAfter()

" Persistent  Undo :)
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buff

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Any Extensions per os
" source ~/.vim/config/osx_vimrc
" source ~/.vim/config/minix_vimcr

" Fix background for colorscheme..
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
