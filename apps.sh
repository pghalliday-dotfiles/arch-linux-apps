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
yaourt -S --noconfirm --needed vim
yaourt -S --noconfirm --needed tmux
yaourt -S --noconfirm --needed openssh
yaourt -S --noconfirm --needed xorg-server
yaourt -S --noconfirm --needed xorg-server-utils
yaourt -S --noconfirm --needed xorg-apps
yaourt -S --noconfirm --needed xorg-xinit
yaourt -S --noconfirm --needed compton
yaourt -S --noconfirm --needed trayer
yaourt -S --noconfirm --needed xmonad
yaourt -S --noconfirm --needed ttf-dejavu
yaourt -S --noconfirm --needed hsetroot
yaourt -S --noconfirm --needed dmenu
yaourt -S --noconfirm --needed xmobar
yaourt -S --noconfirm --needed xscreensaver
yaourt -S --noconfirm --needed rxvt-unicode-patched
