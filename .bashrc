if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

alias vim=nvim

[ -x /bin/fish ] && SHELL=/bin/fish exec /bin/fish
