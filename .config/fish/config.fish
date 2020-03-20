set fish_greeting ''

set -gx TODOTXT_DEFAULT_ACTION ls
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow'
set -gx FZF_DEFAULT_OPTS '--color bw'
set -g fish_user_paths "/usr/local/opt/gnu-getopt/bin" $fish_user_paths

alias vim 'nvim'
alias nano 'kibi'

alias p 'sudo pacman'
alias c 'clear'
alias ls 'exa'

alias gg 'lazygit'
alias gpl 'git pull'
alias gps 'git push'
alias gcm 'git commit'
alias gst 'git status'
alias gco 'git checkout'

alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias brewup 'brew update && brew upgrade && brew cask upgrade'

alias gdocs 'open ~/repos/godot-docs/_build/html/index.html'
alias godot '/Applications/Godot.app/Contents/MacOS/Godot'

alias kd 'kitty @ set-colors -a "~/.config/kitty/theme-dark.conf"'
alias kl 'kitty @ set-colors -a "~/.config/kitty/theme-light.conf"'

starship init fish | source
