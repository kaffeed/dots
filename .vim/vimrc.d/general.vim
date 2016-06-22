set showmode
set showcmd
set showmatch
set exrc
set secure
set viminfo="NONE"

" Bashscript stuff
filetype plugin on
filetype indent on

"Airline stuff

let g:airline_powerline_fonts = 1 "Nicer word wrapping
set laststatus=2
set ttimeoutlen=50

set lazyredraw

" Highlight cursor line
" set cursorline
set formatoptions=1
set linebreak
set breakat=\ |@-+;:,./?^I
set number
 " Disable creation of swap files
set noswapfile

set updatetime=800
set history=700
set autoread

set nobackup
set nowritebackup
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent
set nowrap

set linebreak
set textwidth=80

set splitbelow
set splitright

set wildmenu
set wildmode=list:longest:list,full
set wildignore=*.o,*~,*.pyc,*.swp,*.zip,*.rar,*.png,*.jpg,*.wav,*.mp3,*.avi,*.cpan*

" Always show current position
set ruler

set cmdheight=1
set cmdwinheight=4

set winwidth=25
set winheight=15

" A buffer becomes hidden when it is abandoned
set hidden

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Load default tags
set tags+=$HOME/.vim/tags/c
set tags+=$HOME/.vim/tags/cpp
set magic

set noshowmatch

let g:livepreview_previewer = 'zathura'

"Bufferline stuff
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_active_highlight = 'StatusLine'
