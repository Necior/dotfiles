alias ..='cd ..'
alias journal='cd ~/Dropbox/Docs/journal'
alias rm='rm -I'

alias gs='git status --ignore-submodules'
alias gd='git diff --color-words'
alias gg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Inspired by http://durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/
alias gl='git log --graph --decorate --pretty=format:"%C(yellow)%h%Cred%d %Creset%s%Cblue [%cn]"'

alias pingg='ping 8.8.8.8'
alias clip='xclip -selection c'
alias hibernate='sudo echo "See you!" && gnome-screensaver-command -l && sudo pm-hibernate'
alias im="scrot -s -q 100 -e 'img2cpb \$f && rm \$f'"
