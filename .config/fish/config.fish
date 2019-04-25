if status --is-login
  set PATH $PATH /usr/bin usr/sbin /usr/local/bin /bin /sbin
end

if test -e ~/.nix-profile/etc/profile.d/nix.sh
  bass source  ~/.nix-profile/etc/profile.d/nix.sh
end

set -g -x fish_greeting ''

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -gx GDK_BACKEND wayland
set -gx QT_SCALE_FACTOR 2
set -gx BROWSER firefox
set -gx EDITOR nvim

# aliases
alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim nvim
alias ci commit
alias co checkout
alias st status
