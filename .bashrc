export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim

# Wayland stuff
# export MOZ_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland
# export KITTY_ENABLE_WAYLAND=1
# export CLUTTER_BACKEND=wayland
# export QT_AUTO_SCREENSCALE_FACTOR=1
# export QT_QPA_PLATFORM=wayland-egl
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_WAYLAND_FORCE_DPI=physical
# export ECORE_EVAS_EVAS_ENGINE=wayland_egl
# export ELM_ENGINE=wayland_egl
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1

export TODOTXT_DEFAULT_ACTION=ls

export FZF_DEFAULT_COMMAND='rg --files --follow'

export PATH="$PATH:$HOME/.yarn/bin"

if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

[ -x $(which fish) ] && SHELL=$(which fish) exec $(which fish)
