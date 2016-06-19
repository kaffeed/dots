#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Use GTK widgets in place of QT
#export QT_STYLE_OVERRIDE=GTK+

# merge in defaults and keymaps
xrdb -load ~/.Xresources
# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset s off
xset -dpms
xset s noblank

#us international, yaaay
setxkbmap -layout us -variant altgr-intl -option nodeadkeys


# desktop wallpaper
sh ~/.fehbg &

#get rid of ugly cross
xsetroot -cursor_name left_ptr

#starting compton
compton --config ~/.config/compton.conf -b

# urxvt daemon
urxvtd -q -f -o &

# window manager
exec i3
