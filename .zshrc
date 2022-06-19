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

# PATH
export PATH="$HOME/.local/bin:$PATH"

# alias
alias dotfiles="git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"    # dotfiles backup
alias less='less -Q'    # Mute PC speaker in less
alias man='man -P "less -Q"'
alias dh='du -h --max-depth=1'
#alias mv='mv -i'
#alias cp='cp -i'
#alias rm='rm -i'
#alias ln='ln -i'
alias mkdir='mkdir -p'
alias pacsyu='sudo pacman -Syu'
#alias systemctl='sudo systemctl'
alias ssh='TERM=xterm-256color ssh'
alias dd='dd bs=8M conv=sync status=progress'
alias ddiso='sudo dd bs=8M conv=noerror,sync status=progress'
#alias flatpak='flatpak --user'
alias butane='podman run --rm --interactive       \
              --security-opt label=disable        \
              --volume ${PWD}:/pwd --workdir /pwd \
              quay.io/coreos/butane:release'


