# Add commonly used folders to $PATH
export PATH="$HOME/.local/bin/:$HOME/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim

export TODOTXT_DEFAULT_ACTION=ls
export FZF_DEFAULT_COMMAND='rg --files --follow'

# Wayland stuff
export MOZ_ENABLE_WAYLAND=1
export KITTY_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
export QT_AUTO_SCREEN_SCALE_FACTOR=1
# export QT_QPA_PLATFORM=wayland-egl
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_WAYLAND_FORCE_DPI=physical
# export ECORE_EVAS_EVAS_ENGINE=wayland_egl
# export ELM_ENGINE=wayland_egl
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1

# Example aliases
alias g='git'

[ -x $(which fish) ] && SHELL=$(which fish) exec $(which fish)
