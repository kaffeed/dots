#!/bin/bash - 
#===============================================================================
#
#          FILE: mpd.sh
# 
#         USAGE: ./mpd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/21/2016 13:19
#      REVISION:  ---
#===============================================================================

current=$( mpc current )
label=

status=$( mpc status | grep "playing\|paused" | cut -d "[" -f2 | cut -d "]" -f1 )


case $status in
	playing)
		label=
		;;

	paused)
		label=⏸
		;;

	*)
		exit 0
		;;
esac    # --- end of case ---

echo "$label $current"
exit 0
