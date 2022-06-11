function ssh --description 'TERM=xterm-256color ssh'
    TERM=xterm-256color command ssh $argv
    #[ "$TERM" = "xterm-kitty" ] && kitty +kitten ssh $argv
end
