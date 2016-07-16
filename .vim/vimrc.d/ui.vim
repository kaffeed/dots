" Set color scheme

" Load colorscheme depending on wm
let current_wm=$CURRENT_WM
if current_wm=="bspwm"
    set t_Co=16
    execute "colorscheme gruvbox"
    let g:airline_theme = 'gruvbox'
elseif current_wm=="i3"
    set t_Co=256
    execute "colorscheme gruvbox"
    let g:airline_theme = 'gruvbox'
elseif current_wm=="openbox"
    execute "colorscheme ryuuko"
endif

set background=dark

syntax on
