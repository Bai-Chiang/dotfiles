if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ssh="TERM=xterm-256color command ssh"
    alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/bai-qiang/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

