# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -e /home/kkga/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kkga/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export EDITOR=micro

exec fish