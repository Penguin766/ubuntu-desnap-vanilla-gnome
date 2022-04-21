#!/bin/sh
# Update the environment
apt full-upgrade -y

# Add universe and multiverse.
add-apt-repository -y --no-update universe
add-apt-repository -y --no-update multiverse
apt update -y

# Install vanilla Gnome desktop and remove Ubuntu session
apt install vanilla-gnome-desktop vanilla-gnome-default-settings
apt install -y -f
apt purge -y ubuntu-desktop ubuntu-session

# Remove pre-installed snap stuff to prevert issues while building
snap remove --purge firefox
snap remove --purge snap-store
snap remove --purge gnome-3-28-2004
snap remove --purge gtk-common-themes
snap remove --purge snapd-desktop-integration
snap remove --purge core20
snap remove --purge snapd

# Remove snapd from the system and install flatpak
apt purge -y snapd
apt-mark hold snapd
apt install -y wget curl gnome-tweaks git flatpak gnome-software gnome-software-plugin-flatpak
flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Gnome web browser (epiphany) insted of default Firefox snap
sudo apt install epiphany-browser

# Installs gnome extensions.
apt install gnome-shell-extension-gsconnect
# bash ./install-gnome-extensions.sh --enable 517 779 448 4228
# Extensions are as follows: caffeine clipboard-indicator remove-rounded-corners sound-output-device-chooser
