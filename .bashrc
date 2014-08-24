# .bashrc - Rajesh Shenoy

### CUSTOM
if [[ -e ~/.bash_custom ]];then
    source ~/.bash_custom    
fi

### ENVIRONMENT
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export LESS='-R'

#PYTHON
export PYTHONSTARTUP=~/.pythonrc

### INTERACTIVE
if [[ $- != *i* ]]; then
    return
fi

### INVOKE .bashrc
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

### BACKSPACE
if [ -x /usr/bin/tput ]; then
  if [ "x`tput kbs`" != "x" ]; then
    stty erase `tput kbs`
  elif [ -x /usr/bin/wc ]; then
    if [ "`tput kbs|wc -c `" -gt 0 ]; then
      stty erase `tput kbs`
    fi
  fi
fi
stty erase ^?

### PROMPT

case $TERM in
    xterm*)
            PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
            ;;
    screen)
            PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\033\\"'
            ;;
        *)
            PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}"'
esac

PS1="\[\033[0;34m\][\u@\h:\w]$\[\033[0m\]"

### UMASK
umask 022

### ALIASES

alias c='clear'
alias cp='cp -i'
alias du='du -ch'
alias df='df -h'
alias less='/usr/share/vim/**/macros/less.sh'
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

### HISTORY

export HISTSIZE=10000
export HISTFILESIZE=100000
export HISTIGNORE=ignoredups

### SHELL OPTIONS
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s hostcomplete
shopt -s nocaseglob
shopt -s progcomp
shopt -s promptvars
shopt -s sourcepath

### SETTINGS
set -o noclobber
set -o emacs
set -o ignoreeof
set -o notify


### FUNCTIONS 
function psa() {
    ps auxwww | grep $@ | grep -v grep
}



