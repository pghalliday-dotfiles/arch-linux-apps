#!/bin/bash

set -e

# install yaourt
sudo pacman -S --noconfirm --needed git
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm --needed
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm --needed
cd ..

# install everything else
yaourt -S --noconfirm vim
yaourt -S --noconfirm tmux
yaourt -S --noconfirm openssh
yaourt -S --noconfirm xorg-server
yaourt -S --noconfirm xorg-server-utils
yaourt -S --noconfirm xorg-apps
yaourt -S --noconfirm xorg-init
yaourt -S --noconfirm compton
yaourt -S --noconfirm trayer
yaourt -S --noconfirm xmonad
yaourt -S --noconfirm ttf-dejavu
yaourt -S --noconfirm hsetroot
yaourt -S --noconfirm dmenu
yaourt -S --noconfirm xmobar
yaourt -S --noconfirm xscreensaver
yaourt -S --noconfirm rxvt-unicode-patched
