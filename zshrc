# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zexy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Theme
source "/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"

#Plugins
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

#Alias
alias epi="nvim $HOME/.config/picom.conf"
alias eala="nvim $HOME/.config/alacritty/alacritty.yml"
alias ekit="nvim $HOME/.config/kitty/kitty.conf"
alias lsm="ls -alh"
alias cpf="cp *.*tf $HOME/.local/share/fonts/"
alias mvf="mv *.*tf $HOME/.local/share/fonts/"
alias pget="sudo pacman -S"
alias pfn="sudo pacman -Ss"
alias psync="sudo pacman -Syy"
alias fn="sudo find / -iname"
alias m="mkdir -p"
alias eorc="nvim $HOME/.config/openbox/rc.xml"
alias ezsh="nvim $HOME/.zshrc && source $HOME/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
