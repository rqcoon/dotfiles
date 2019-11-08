set fish_greeting ''

set -gx TODOTXT_DEFAULT_ACTION ls
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow'
set -gx FZF_DEFAULT_OPTS '--color bw'

alias vim '$EDITOR'
alias t 'topydo'
alias c 'clear'
alias d 'kitty +kitten diff'
alias ls 'exa'
alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias icat "kitty +kitten icat"
alias light "kitty @ set-colors -a ~/.config/kitty/kitty-themes/themes/PencilLight.conf"
alias dark "kitty @ set-colors -a ~/.config/kitty/kitty-themes/themes/PencilDark.conf"
