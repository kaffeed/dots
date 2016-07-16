#!/bin/sh

########################################
# Setup script to simplify installation
# v1
########################################

curl -s https://gist.githubusercontent.com/Tadly/0e65d30f279a34c33e9b/raw/pacaur_install.sh | bash

pacaur -Syu --noconfirm \
    git \
    bspwm \
    neovim \
    emacs25-git \
    dropbox \
    google-chrome-stable \
    mutt \
    mpd \
    ncmpcpp \
    mpc \
    sxhkd \
    xdo-git \
    autorandr \
    cava \
    deluge \
    dunst \
    mpv \



