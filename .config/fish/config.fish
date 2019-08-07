set fish_greeting ''

# set -gx LC_CTYPE en_US.UTF-8
# set -gx LC_ALL en_US.UTF-8
# set -gx BROWSER firefox
# set -gx EDITOR nvim
# set -gx VISUAL nvim

# Wayland stuff
# export MOZ_ENABLE_WAYLAND=1
# export KITTY_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
# export QT_AUTO_SCREEN_SCALE_FACTOR=1
# export QT_QPA_PLATFORM=wayland-egl
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_WAYLAND_FORCE_DPI=physical
# export ECORE_EVAS_EVAS_ENGINE=wayland_egl
# export ELM_ENGINE=wayland_egl
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1

# set -gx TODOTXT_DEFAULT_ACTION ls
# set -gx FZF_DEFAULT_COMMAND 'rg --files --follow'

alias vim '$EDITOR'
alias t 'topydo'
alias c 'clear'
alias d "kitty +kitten diff"
alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias icat "kitty +kitten icat"
