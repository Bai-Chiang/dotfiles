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


alias butane='podman run --rm --interactive       \
              --security-opt label=disable        \
              --volume ${PWD}:/pwd --workdir /pwd \
              quay.io/coreos/butane:release'


## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/bai-chiang/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/bai-chiang/miniconda/etc/profile.d/conda.sh" ]; then
#        . "/home/bai-chiang/miniconda/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/bai-chiang/miniconda/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<

