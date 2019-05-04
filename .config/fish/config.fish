#if status --is-login
#  set PATH $PATH /usr/bin usr/sbin /usr/local/bin /bin /sbin
#end

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -g -x fish_greeting ''

set pure_symbol_prompt '$'

alias vim 'nvim'
alias t 'todo.sh'
alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
