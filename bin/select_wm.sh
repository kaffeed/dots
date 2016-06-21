#!/bin/sh
#===============================================================================
#
#          FILE: select_wm.sh
# 
#         USAGE: ./select_wm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/20/2016 17:03
#      REVISION:  ---
#===============================================================================


case $1 in
	[yY][eE][sS]|[yY])
	echo "Loading i3" && sh ~/bin/init_i3.sh
		;;
	*)
	echo "Loading bspwm" && sh ~/bin/init_bspwm.sh
		;;
esac
