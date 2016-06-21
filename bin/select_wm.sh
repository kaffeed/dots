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


if [ $# -eq 1 ] ; then
	echo "Loading $1" && sh "$HOME/bin/init_$1.sh"
else
	echo "Loading default i3" && sh "$HOME/bin/init_i3.sh"
fi

