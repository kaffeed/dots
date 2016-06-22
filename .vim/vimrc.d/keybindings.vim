let g:mapleader = ","

"faster saving, etc
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :qall<cr>


nnoremap ; :
imap jj <esc>

" Change pwd of current buffer and prompt for file to edit
map <leader>s :lcd %:p:h<cr>:new <c-r>=expand("%:p:h")<cr>/
map <leader>v :lcd %:p:h<cr>:vnew <c-r>=expand("%:p:h")<cr>/
map <leader>e :lcd %:p:h<cr>:edit <c-r>=expand("%:p:h")<cr>/


" Toggle line wrapping
nmap <leader><c-w> :set wrap!<cr>

map j gj
map k gk

" Paragraph formatting
vmap Q gq
nmap Q gqap


nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
map <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

map <leader>o :silent! NERDTreeFind<cr>


" Show all open buffers and their status
nmap <leader>bl :ls<cr>

" Cycle buffers
nmap <tab> :bnext<cr>
nmap <s-tab> :bprevious<cr>

" Toggle between the most recent buffer/file
nmap <leader>` :e#<cr>:pwd<cr>


" Close the current buffer
nmap <leader>bd :Bclose<cr>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <bar> bd #<cr>

" Switch CWD to the directory of the current buffer
nmap <leader>cd :lcd %:p:h<cr>:pwd<cr>

" Cycle tabs
nmap <leader>tn :tabnext<cr>
nmap <leader>tp :tabprevious<cr>

" Close the current tab
nmap <leader>td :tabclose<cr>

" Search stuff


map <space> /
map <c-space> ?


" Clear match highlight
nmap <silent> <leader><leader> :nohlsearch<cr>

" Search for selected text
vmap <silent> * y<bar>:let @/ = substitute(@", "\n", "", "")<cr>n
vmap <silent> # *#vmap <silent> * y


" Cycle results
map <leader>cn :cn<cr>
map <leader>cp :cp<cr>

" Grep pwd/file
map <leader><space><space> :vimgrep // <c-r>%<c-b><right><right><right><right><right><right><right><right><right>
map <leader><space> :vimgrep // **/*<left><left><left><left><left><left>




" Compile and run (cpp)
nmap <f7> :lcd %:p:h<cr>:!make<cr>
nmap <f8> :lcd %:p:h<cr>:!make && ./%< <cr>
nmap <f9> :SyntasticCheck<cr>:echo 'Syntastic check done'<cr>

" Toggle spellchecking
map <leader>ss :setlocal spell!<cr>


" Toggle the display of the Tagbar window
nmap <leader>tt :TagbarToggle<cr>
nmap <leader>to :TagbarOpenAutoClose<cr>

nmap <f6> :SyntasticCheck<cr>
