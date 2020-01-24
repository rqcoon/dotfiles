set fish_greeting ''

set -gx TODOTXT_DEFAULT_ACTION ls
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow'
set -gx FZF_DEFAULT_OPTS '--color bw'

alias vim '$EDITOR'
alias p 'sudo pacman'
alias c 'clear'
alias d 'kitty +kitten diff'
alias ls 'exa'
alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias icat 'kitty +kitten icat'
alias brewup 'brew update && brew upgrade && brew cask upgrade'
alias gdocs 'open ~/repos/godot-docs/_build/html/index.html'

starship init fish | source
