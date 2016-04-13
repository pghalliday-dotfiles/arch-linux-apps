#!/bin/bash

set -e

function install-aur {
  package=$1
  if [ -d $package ]; then
    cd $package
    git pull
  else
    git clone https://aur.archlinux.org/$package.git
    cd $package
  fi
  makepkg -si --noconfirm --needed
  cd ..
}

function install {
  yaourt -S --noconfirm --needed $1
}

# install yaourt
sudo pacman -S --noconfirm --needed git
install-aur package-query
install-aur yaourt

# install everything else
install vim
install tmux
install openssh
install xorg-server
install xorg-server-utils
install xorg-apps
install xorg-xinit
install compton
install trayer
install xmonad
install ttf-dejavu
install hsetroot
install dmenu
install xmobar
install xscreensaver
install rxvt-unicode-patched
