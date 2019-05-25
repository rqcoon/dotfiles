if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

[ -f "$HOME/.profile" ] && source "$HOME/.profile"
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
if [ -e /home/kkga/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kkga/.nix-profile/etc/profile.d/nix.sh; fi
