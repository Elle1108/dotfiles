# Lines configured manually
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt adam2

# Alows me to complete aliased commands
setopt COMPLETE_ALIASES

# Allows me to complete sudo commands
zstyle ':completion::complete:*' gain-privelages 1

# Aliases
alias htop="sudo htop"
alias ufw="sudo ufw"
alias pmr="sudo pacman -Rns"
alias pm="sudo pacman -Syu"
alias colourpicker="colorpicker"
alias ls="ls --color=auto"
# End of lines configured manually

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/elle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
