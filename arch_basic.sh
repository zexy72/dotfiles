#Basic Apps
sudo pacman -Syu base-devel git zsh zsh-syntax-highlighting zsh-autosuggestions zsh-theme-powerlevel10k powerline powerline-fonts wget thunar thunar-archive-plugin thunar-volman thunar-media-tag-plugins tint2 xorg xorg-xinit xf86-video-amdgpu alsa-utils archlinux-wallpaper nitrogen alacritty 
#Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#Basic Aur Apps
yay -S rofi-git polybar breeze-default-cursor-theme
