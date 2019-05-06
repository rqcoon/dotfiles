if status --is-login
  set PATH $PATH /usr/bin usr/sbin /usr/local/bin /bin /sbin
end

if test -e ~/.nix-profile/etc/profile.d/nix.sh
  bass source  ~/.nix-profile/etc/profile.d/nix.sh
end

set -g -x fish_greeting ''

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig:/usr/local/share/pkgconfig

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8

set -gx BROWSER firefox
set -gx EDITOR nvim

set -gx MOZ_ENABLE_WAYLAND 1 
set -gx GDK_BACKEND wayland
set -gx CLUTTER_BACKEND wayland
# set -gx QT_AUTO_SCREENSCALE_FACTOR 1
set -gx QT_SCALE_FACTOR 2

set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

# aliases
alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim nvim
