#!/bin/sh

########################################
# Setup script to simplify installation
# v1
########################################
echo "Installing pacaur"
curl -s https://gist.githubusercontent.com/Tadly/0e65d30f279a34c33e9b/raw/pacaur_install.sh | bash

echo "Installing dependencies for dotfiles"

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
    vim \
    wpa_supplicant \
    wpa_actiond \
    xorg-xinit \
    xorg-xrandr \
    xorg-xbacklight \
    xorg-xev \
    xorg-xinput \
    xorg-xset \
    xorg-xsetroot \
    xorg-xprop \
    ttf-font-awesome \
    rxvt-unicode-256xresources \
    fira-code-git \
    neofetch \
    zsh \
    prezto-git \
    mps-youtube \
    dhcpcd \
    rofi \
    ntfs-3g \
    numlockx \
    nvm-git \
    python2 \
    python \
    pulseaudio \
    pulseaudio-alsa \
    pulseaudio-ctl \
    amixer \
    aspell \
    aspell-de \
    aspell-en \
    arandr \
    bashdb \
    gtk-theme-arc-git \
    i3lock \
    mesa \
    ncdu \
    numix-icon-theme-git \
    powerline-fonts-git \
    ranger \
    redshift \
    rsync \
    sbcl \
    scrot \
    skype \
    telegram-desktop-bin \
    termsyn-font \
    envypn-font \
    ttf-material-icons \
    bdf-unifont \
    xf86-input-keyboard \
    xf86-input-mouse \
    xf86-input-synaptics \
    xf86-input-libinput \
    xf86-video-intel \
    xorg-setxkbmap \
    compton

echo "Cloning dots repository"

git clone --recursive --separate-git-dir=$HOME/.dots.git https://github.com/sconos/dots.git /tmp/dots
rsync -rvl --exclude ".git" /tmp/dots/ $HOME/
rm -r /tmp/dots
dots submodule update --init --recursive

echo "Finished..."
