set nocompatible

" load pathogen
filetype off

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

" Gundo settings
let g:gundo_close_on_revert=1

" Airline settings
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=0

" Syntastic settings
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]

" jj is easier to write and you're probably not going to write it ever
inoremap jj <ESC>

" to add line between brackets
imap <C-c> <CR><Esc>O

" easy window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" close autocomplete docs when done
autocmd CompleteDone * pclose

" set colorscheme
set t_Co=256
colorscheme badwolf

" tab options
set expandtab
set softtabstop=4
set shiftwidth=4

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
" set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when needed
set lazyredraw

" enable matching
set showmatch

" search options
set incsearch
set hlsearch

" leader is comma
let mapleader=","

" buffer management, in order: new buf, next buf, prev buf, close and go to
" last, show status of current buffers
set hidden
nnoremap <leader>T :enew<CR> 
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>
nnoremap <leader>bl :ls<CR>

" turn off search highlight
nnoremap <leader><Space> :nohlsearch<CR>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" toggle NERDTree and close if last window
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
