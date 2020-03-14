[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -x $(which fish) ] && SHELL=$(which fish) exec $(which fish)

