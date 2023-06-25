export ZSH="/home/elle/.oh-my-zsh"
export PATH="/home/elle/.local/bin:/home/elle/.nix-profile/bin:$PATH"

ZSH_THEME="robbyrussell"

# update automatically without asking
zstyle ':omz:update' mode auto

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="%Y-%m-%dT%H:%M:%S%Z"

plugins=(
	git
	zsh-autosuggestions
	sudo
	copypath
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

alias i3="startx /bin/i3"
alias asdf="setxkbmap -layout us -variant dvorak-alt-intl"
alias xcolour="xcolor"
alias aoeu="setxkbmap -layout us"
alias ifconfig="ip -br -c a"
alias py="/bin/python"
alias zshconfig="vim ~/.zshrc"
alias ufw="sudo ufw"
alias pm="sudo pacman"

wheelUsers=$(cat /etc/group | grep wheel)

if [[ "$wheelUsers" == *"$USER"* ]]; then
        sudoStatus="{*}"
else
        sudoStatus="{ }"
fi

PROMPT="%F{012}%D{%H:%M:%S} %F{013}%B%n%b$sudoStatus %F{011}[%3d] %F{012}> "

function preexec() {
  timer=$(($(date +%s%0N)/1000000))
}

function precmd() {
  if [ $timer ]; then
      now=$(($(date +%s%0N)/1000000))
      elapsed=$(($now-$timer))
      export RPROMPT="%(?:%F{010}%?:%F{009}%?) %F{cyan}${elapsed}ms"
      unset timer
  fi
			    }
