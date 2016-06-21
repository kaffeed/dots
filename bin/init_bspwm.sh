#!/bin/bash - 
#===============================================================================
#
#          FILE: init_bspwm.sh
# 
#         USAGE: ./init_bspwm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/20/2016 17:19
#      REVISION:  ---
#===============================================================================

sxhkd -f 100 &
xrdb -merge $XDG_CONFIG_HOME/bspwm/colors
xrdb -merge $XDG_CONFIG_HOME/bspwm/rofi
export VIM_COLORSCHEME=paraiso
feh --bg-fill $HOME/.wallpapers/image_072.jpg
wmname LG3D &
exec bspwm
