#!/bin/bash - 
#===============================================================================
#
#          FILE: i3_init.sh
# 
#         USAGE: ./i3_init.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/20/2016 17:08
#      REVISION:  ---
#===============================================================================

xrdb -merge $XDG_CONFIG_HOME/i3/colors

exec i3
