export HISTCONTROL=ignorespace
export HISTSIZE="nolimit"
export HISTFILESIZE="nolimit"
shopt -s histappend

PATH=$PATH:~/bin

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
