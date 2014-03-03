# .zshrc - Rajesh Shenoy


if [[ -e ~/.zsh_custom ]]; then
    . ~/.zsh_custom
fi

[[ -o interactive ]] || return

bindkey -e
#bindkey '\e[3~' delete-char
#bindkey '^R' history-incremental-search-backward

alias c='clear'
alias cp='cp -i'
alias du='du -ch'
alias df='df -h'
alias less='/usr/share/vim/vim73/macros/less.sh'
alias ll='ls -alrvhFG'
alias ls='ls -G'
alias m='less'
alias mkdir='mkdir -p'
alias more='less'
alias mv='mv -i'
alias rm='rm -i'
alias s='ssh -A'
alias sa='ssh-add'
alias screen='screen -a -A -D -R'
alias v='vim'
