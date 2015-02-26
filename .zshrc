# .zshrc - Rajesh Shenoy

### CUSTOM

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### INTERACTIVE

[[ -o interactive ]] || return

### BINDINGS

bindkey -e
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-search-backward

### ALIASES

alias c='clear'
alias cp='cp -i'
alias du='du -ch'
alias df='df -h'
alias ll='ls -alrvFG'
alias m='less'
alias mkdir='mkdir -p'
alias more='less'
alias mv='mv -i'
alias rm='rm -i'
alias s='ssh -A'
alias sa='ssh-add'
alias sg="ssh-agent $SHELL"
alias screen='screen -a -A -D -R'
alias v='vim'
alias format_json='python -mjson.tool'

### OPTIONS

setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY


### FUNCTIONS 
function psa() {
    ps auxwww | grep $@ | grep -v grep
}

### ENV

EDITOR=vim
VISUAL=vim
PAGER=less

if [[ -e ~/.zsh_custom ]]; then
    . ~/.zsh_custom
fi


# added by travis gem
[ -f /Users/rajeshshenoy/.travis/travis.sh ] && source /Users/rajeshshenoy/.travis/travis.sh
