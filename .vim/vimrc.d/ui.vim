" Set color scheme
set t_Co=16

" Load colorscheme depending on wm
let current_wm=$CURRENT_WM
if current_wm=="bspwm"
    execute "colorscheme base16-paraiso"
    let g:airline_theme = 'base16_paraiso'
elseif current_wm=="i3"
    execute "colorscheme gruvbox"
    let g:airline_theme = 'gruvbox'
endif

set background=dark

syntax on
