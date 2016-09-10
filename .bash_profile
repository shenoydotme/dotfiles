# .bash_profile - Rajesh Shenoy

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.profile ]; then
     source ~/.profile
fi

export PATH=/usr/local/sbin:/usr/local/bin:$PATH
