# .bash_profile - Rajesh Shenoy

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.profile ]; then
     source ~/.profile
fi

export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export NODE_PATH="/usr/local/lib/node_modules/"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
