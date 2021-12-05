# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit
# End of lines added by compinstall

# syntax highlighting and autosuggestions
# install packages zsh-syntax-highlighting zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# dotfiles backup
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
