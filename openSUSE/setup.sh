#!/bin/bash

### CONFIGURING SYSTEM SETTINGS ###
# Setting hostname to vivo
echo -n "Setting hostname to vivo ...."
hostnamectl set-hostname vivo
echo "Done"
echo

# Fixing tlp.conf -> keyboard and mouse do not work without AC power
sed -i 's/#RUNTIME_PM_ON_BAT=auto/RUNTIME_PM_ON_BAT=on/' /etc/tlp.conf



### INSTALLING SOFTWARE ###
# Zypper installs
echo "Installing from repository"
zypper refresh
zypper install \
	git \
	mpv \
	opi \
	foot \
	neovim \
	gitui \
	bat \
	ripgrep \
	syncthing \
	fish \
	python312 \
	starship	
echo "Done"
echo

# opi installs
echo "Installing using opi"
opi \
	codecs \
	Brave \
	codium
echo "Done"
echo

# Flatpak installs
echo "Installing flatpaks"
flatpak install flathub \
	dev.vencord.Vesktop \
	com.github.tchx84.Flatseal \
	md.obsidian.Obsidian \
	com.stremio.Stremio \
	org.qbittorrent.qBittorrent \
	com.bitwarden.desktop
echo "Done"
echo

# Installing RUST
echo "Installing RUST using Rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Done"
echo

# Installing croc for file share
echo "Installing croc for file sharing"
curl https://getcroc.schollz.com | bash
echo "Done"
