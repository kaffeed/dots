XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# export english/us/utf8 as language env variable
export LANG=en_US.UTF-8

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
fi

#CURRENTLY POSSIBLE: i3, awesome, openbox, xfce and bspwm
export CURRENT_WM=bspwm

if [ -d $HOME/bin ] ; then
    PATH="$HOME/bin:$PATH"
fi

# automatically start x server on same tty used for login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.xinitrc $CURRENT_WM
