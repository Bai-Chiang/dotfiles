function pf --wraps='sudo pacman -Syu && poweroff' --description 'alias pf=sudo pacman -Syu && poweroff'
    sudo pacman -Syu && poweroff $argv

end
