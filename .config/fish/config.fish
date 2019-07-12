#if status --is-login
#  set PATH $PATH /usr/bin usr/sbin /usr/local/bin /bin /sbin
#end

# User bin folder
# set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -g -x fish_greeting ''

alias vim 'nvim'
alias t 'topydo'
alias c 'clear'
alias d="kitty +kitten diff"
alias cfg '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias icat="kitty +kitten icat"
