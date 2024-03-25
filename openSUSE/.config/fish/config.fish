### FISH SHELL CONFIG ###

### INITIALIZATIONS ###
starship init fish | source

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "nvim"                 # $EDITOR use Emacs in terminal
set VISUAL "gnome-text-editor"
set KITTY_CONFIG ~/.config/kitty/kitty.conf
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

### FUNCTIONS ###
function mkcdir
	mkdir -pv -- $1 &&
	cd -P -- $1;
end

### ALIASES ###
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# config editing and sourcing
alias vbash="nvim ~/.bashrc"
alias srcbash="source ~/.bashrc"
alias vfish='nvim ~/.config/fish/config.fish'
alias srcfish='source ~/.config/fish/config.fish'
alias vkitty='nvim $KITTY_CONFIG'
alias vfoot='nvim ~/.config/foot/foot.ini'

#zypper and flatpak
alias zin='sudo zypper install'
alias zinnr='sudo zypper install --no-recommends'
alias zre='sudo zypper refresh'
alias zse='zypper search'
alias zup='sudo zypper dup'
alias zrm='sudo zypper remove'
alias fpin='sudo flatpak install'

#add sudo to commands
alias reboot='sudo reboot'
alias systemctl='sudo systemctl'
alias snapper='sudo snapper'

#additional
alias mkdir='mkdir -pv'
alias pyact='source ~/Documents/PyWorks/py_env/bin/activate.fish'
alias deact='deactivate'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

alias vi='nvim'
alias ls='exa -la'
