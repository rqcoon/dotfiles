set fish_greeting ''

set -gx TODOTXT_DEFAULT_ACTION ls
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow'
set -gx FZF_DEFAULT_OPTS '--color 16'

alias vim '$EDITOR'
alias doom '~/.emacs.d/bin/doom'
alias p 'sudo pacman'
alias c 'clear'
alias d 'kitty +kitten diff'
alias ls 'exa'
alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias icat 'kitty +kitten icat'
alias brewup 'brew update && brew upgrade && brew cask upgrade'
alias gdocs 'open ~/repos/godot-docs/_build/html/index.html'
alias godot '/Applications/Godot.app/Contents/MacOS/Godot'
alias kd 'kitty @ set-colors -a "~/.config/kitty/apprentice-theme.conf"'
alias kl 'kitty @ set-colors -a "~/.config/kitty/apprentice-light-theme.conf"'
alias branch 'git branch | cut -c 3- | fzy | xargs git checkout'

starship init fish | source
set -g fish_user_paths "/usr/local/opt/gnu-getopt/bin" $fish_user_paths

