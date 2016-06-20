""""""""""""
" ~/.vimrc "
""""""""""""
set nocompatible
set showmode
set showcmd
set showmatch
set viminfo="NONE"
" Set color scheme
set t_Co=16
colorscheme gruvbox
set background=dark

" Enable syntax highlight
syntax on


" Plug

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'OmniSharp/omnisharp-vim'
Plug 'chriskempson/base16-vim'
call plug#end()

" Bashscript stuff
filetype plugin on

let g:BASH_AuthorName = 'SebastianSchubert'
let g:BASH_Email      = 'sschubert932@gmail.com'

" Airline stuff

let g:airline_powerline_fonts = 1 "Nicer word wrapping
let g:airline_theme = 'gruvbox'
set laststatus=2
set ttimeoutlen=50

" Highlight cursor line
set cursorline
set formatoptions=1
set linebreak
set breakat=\ |@-+;:,./?^I
set number
" Disable creation of swap files
set noswapfile

" Remap control+V and control+C
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
