if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

[ -f "$HOME/.profile" ] && source "$HOME/.profile"
[ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ] && source "$HOME/.nix-profile/etc/profile.d/nix.sh"
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
