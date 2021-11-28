# Zsh profile config

# Start X at login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

# Start Gnome-Keyring
#if [ -n "$DESKTOP_SESSION" ];then
#	eval $(gnome-keyring-daemon --start)
#	export SSH_AUTH_SOCK
#fi
