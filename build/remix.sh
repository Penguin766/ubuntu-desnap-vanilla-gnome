#!/bin/sh

# Add universe and multiverse.
add-apt-repository -y --no-update universe
add-apt-repository -y --no-update multiverse
apt update -y

# Install software
apt purge -y snapd
apt-mark hold snapd 
apt install -y wget curl gnome-tweaks git flatpak gnome-software gnome-software-plugin-flatpak
flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo

# Installs gnome extensions.
apt install gnome-shell-extension-gsconnect gnome-shell-extension-no-annoyance
# bash ./install-gnome-extensions.sh --enable 517 779 448 4228
# Extensions are as follows: caffeine clipboard-indicator remove-rounded-corners sound-output-device-chooser
