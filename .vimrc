""""""""""""
" ~/.vimrc "
""""""""""""

" Plug

call plug#begin('~/.vim/plugged')
Plug 'baskerville/vim-sxhkdrc'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
call plug#end()

" Source configurations
for g:rc in split(glob('$HOME/.vim/vimrc.d/*.vim'), '\n')
	exe 'source' rc
endfor
