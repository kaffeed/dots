XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# export english/us/utf8 as language env variable
export LANG=en_US.UTF-8

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
	ssh-add
fi


export CURRENT_WM=bspwm

# automatically start x server on same tty used for login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.xinitrc $CURRENT_WM
