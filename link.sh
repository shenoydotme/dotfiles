#!/usr/bin/env sh

####################################################
#Conviniently setup symlinks for preferences files #
####################################################

ME=`basename $0`

for FILE in `ls -A ~/dotfiles`;
do
    if [[ $FILE != $ME &&  ! $FILE =~ .git* 
                && ! $FILE =~ .*.swp && ! $FILE =~ README.md
                && ! -d $FILE ]];then
        echo "Linking ${FILE}"
        if [ -e ~/$FILE ];then
            if [ -h ~/$FILE ];then
                rm ~/$FILE
            else
                mkdir -p ~/bk
                mv ~/${FILE} ~/bk/${FILE}.bk.`date +%m%d%Y`
            fi
        fi
        ln -s ~/dotfiles/${FILE} $FILE
    fi
done

