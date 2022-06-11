function dotfiles --wraps 'git --git-dir=$HOME/.dotfiles/ ' --description 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end

function dotfiles_add --wraps 'ls' --description 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add'
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add $argv
end
