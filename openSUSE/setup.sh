#!/bin/bash

### CONFIGURING SYSTEM SETTINGS ###
# Setting hostname to vivo
echo -n "Setting hostname to book ...."
hostnamectl set-hostname book
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
	kitty \
	neovim \
	gitui \
	bat \
	ripgrep \
	syncthing \
	python312 \
	starship \
	fzf
echo "Done"
echo

# opi installs
echo "Installing using opi"
opi \
	codecs \
	Brave \
	codium \
	exa
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
echo "Done"; echo

echo Installing using cargo
cargo install binstall

cargo binstall \
	sccache \
	cargo-info \
	bacon \
	porsmo \
	mise \
	speedtest-rs

# Installing croc for file share
echo "Installing croc for file sharing"
curl https://getcroc.schollz.com | bash
echo "Done"



### ----- GIT CLONING ----- ###
mkdir -p ~/Github
cd ~/Github

# Battery charge limiter for asus
git clone https://github.com/sreejithag/battery-charging-limiter-linux.git 
cd battery-charging-limiter-linux
chmod +x ./limitd.sh
./limitd.sh 60

cd ~/Github

# Ble.sh -- Bash Line Editor --
git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local

cd ~/Github




### --- ADDING .CONFIG FILES --- ###
cp ~/Github/dotfiles/openSUSE/.config ~/ 
cp ~/Github/dotfiles/openSUSE/.bashrc ~/ 
