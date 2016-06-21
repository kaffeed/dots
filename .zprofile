XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# export english/us/utf8 as language env variable
export LANG=en_US.UTF-8

declare -a wm=("y" "n")

# automatically start x server on same tty used for login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.xinitrc "y"
