# if [[ $- != *i* ]] ; then
#     # Shell is non-interactive.  Be done now!
#     return
# fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim

export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export QT_AUTO_SCREENSCALE_FACTOR=1
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_WAYLAND_FORCE_DPI=physical
export ECORE_EVAS_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

alias vim=nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias t=todo.sh

if [ -e /Users/gadzhi/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/gadzhi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

exec fish
