export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

PATH="$HOME/.scripts:$HOME/.cargo/bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export PATH
export EDITOR=nvim
export BROWSER=firefox
export VISUAL=nvim

export TODOTXT_DEFAULT_ACTION=ls
export FZF_DEFAULT_COMMAND='rg --files --follow'
export FZF_DEFAULT_OPS='--color=bw'

export RESTIC_REPOSITORY='sftp:gadzhi.synology.me:/home/restic-backup'
export RESTIC_PASSWORD_COMMAND='security find-generic-password -s backup-restic-repository -a restic_backup -w'

# Wayland
# export MOZ_ENABLE_WAYLAND=1
# export KITTY_ENABLE_WAYLAND=1
# export QT_AUTO_SCREEN_SCALE_FACTOR=1
# export QT_QPA_PLATFORM=wayland-egl
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export QT_WAYLAND_FORCE_DPI=physical
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
# export ECORE_EVAS_EVAS_ENGINE=wayland_egl
# export ELM_ENGINE=wayland_egl
# export SDL_VIDEODRIVER=wayland
# export _JAVA_AWT_WM_NONREPARENTING=1
