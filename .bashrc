# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -e /home/kkga/.nix-profile/etc/profile.d/nix.sh ]; then
    . /home/kkga/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

#eval `/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg`
#export SSH_AUTH_SOCK
#export GPG_AGENT_INFO

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export EDITOR=micro
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
