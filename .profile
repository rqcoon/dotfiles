export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/var/lib/flatpak/exports/bin:$PATH"

if [ "$HOSTNAME" = silverblue ]; then
    EDITOR=io.neovim.nvim
else
    EDITOR=nvim
fi
export EDITOR
export BROWSER=firefox
export VISUAL=EDITOR

export TODOTXT_DEFAULT_ACTION=ls
export FZF_DEFAULT_COMMAND='rg --files --follow'

# Wayland stuff
export MOZ_ENABLE_WAYLAND=1
export KITTY_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_WAYLAND_FORCE_DPI=physical
# export ECORE_EVAS_EVAS_ENGINE=wayland_egl
# export ELM_ENGINE=wayland_egl
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1
