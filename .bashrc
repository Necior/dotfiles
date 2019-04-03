export HISTCONTROL=ignorespace
export HISTSIZE="nolimit"
export HISTFILESIZE="nolimit"
shopt -s histappend

PATH=$PATH:~/bin

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export EDITOR=vim

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

function cheat() {
  curl cht.sh/$1
}

