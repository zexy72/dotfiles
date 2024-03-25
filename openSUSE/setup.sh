#!/bin/bash

### SETTING HOSTNAME ###
echo -n "Setting hostname to vivo ...."
hostnamectl set-hostname vivo
echo "Done"
echo

echo "Installing from repository"
zypper refresh
zypper install git mpv opi foot neovim gitui bat ripgrep syncthing fish python312 starship
echo "Done"
echo

echo "Installing using opi"
opi codecs Brave codium
echo "Done"
echo

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

echo "Installing RUST using Rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Done"
echo

echo "Installing croc for file sharing"
curl https://getcroc.schollz.com | bash
echo "Done"
