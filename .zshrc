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
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

export GPG_TTY=$(tty)
export PASSWORD_STORE_GPG_OPTS="--homedir $HOME/.password-store/gnupg"

# alias
alias dotfiles="git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"    # dotfiles backup
alias less='less -Q -I'    # Mute PC speaker in less and ignore case when search
alias man='man -P "less -Q"'
alias duh='du -h --max-depth=1'
alias df='df -h'
alias mkdir='mkdir -p'
alias ssh='TERM=xterm-256color ssh'
alias icat="kitty +kitten icat --align left"
alias flatpak='flatpak --user'
alias pf='sudo pacman -Syu && poweroff'
alias mpv="MPV_HOME=$HOME/.config/mpv io.mpv.Mpv"
alias diff='diff --color -u'


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/bai-chiang/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/bai-chiang/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

alias mamba='micromamba'
