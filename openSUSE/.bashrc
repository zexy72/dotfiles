# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.



### ----- BLE.SH START ----- ###
[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach
### ----- BLE.SH START ----- ###



test -s ~/.alias && . ~/.alias || true



### --- ENVIRONMENT VARIABLES --- ###
export EDITOR=neovim
export KITTY_CONFIG=~/.config/kitty/kitty.conf
export STARSHIP_CONFIG=~/.config/starship/starship.toml



### --- INITIALIZATIONS --- ###
eval "$(starship init bash)" 
eval "$(mise activate bash)"



### --- SOURCING FILES --- ###



### ALIASES ###
# config edits
alias nvbash="nvim ~/.bashrc"
alias srcbash="source ~/.bashrc"
alias nvkitty='nvim $KITTY_CONFIG'


# zypper and flatpak
alias zin='sudo zypper install'
alias zinnr='sudo zypper install --no-recommends'
alias zre='sudo zypper refresh'
alias zse='zypper search'
alias zup='sudo zypper dup'
alias zrm='sudo zypper remove'
alias fpin='sudo flatpak install'

# adds sudo
alias reboot='sudo reboot'
alias systemctl='sudo systemctl'
alias snapper='sudo snapper'

# cd up the directory
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

#mkdir create parents
alias mkdir='mkdir -pv'
mkcdir ()
{
	mkdir -pv -- "$1" &&
	cd -P -- "$1"
}

# Python
alias pystart='source ~/Documents/PyWorks/env/bin/activate'

# confirmations
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'
. "$HOME/.cargo/env"


### ----- BLE.SH END ----- ###
[[ ${BLE_VERSION-} ]] && ble-attach
### ----- BLE.SH END ----- ###
