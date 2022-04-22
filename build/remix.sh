#!/bin/sh
# Update the environment
apt full-upgrade -y

# Add universe and multiverse.
add-apt-repository -y --no-update universe
add-apt-repository -y --no-update multiverse
apt update -y

# Install vanilla Gnome desktop and remove Ubuntu session
apt install -y vanilla-gnome-desktop vanilla-gnome-default-settings
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
apt install -y flatpak gnome-software gnome-software-plugin-flatpak
apt-mark hold snapd
flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Gnome web browser (epiphany) insted of default Firefox snap
sudo apt install -y epiphany-browser
