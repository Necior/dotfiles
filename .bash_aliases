alias ..='cd ..'
alias ls='exa --color=auto'
alias sl='exa --color=auto'
alias l='clear; exa'

alias gs='git status --ignore-submodules'
alias gd='git diff --color-words'
alias gg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Inspired by http://durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/
alias gl='git log --graph --decorate --pretty=format:"%C(yellow)%h%Cred%d %Creset%s%Cblue [%cn]"'

alias pingg='ping 8.8.8.8'
alias mpv_mixdown='mpv --af=pan=1:[0.5,0.5]'
alias mpvx='mpv --no-video'
alias soma='mpv --no-video https://somafm.com/defcon130.pls'
alias :q='exit'

alias fifa='mpv --demuxer-lavf-o=video_size=1280x720,input_format=mjpeg av://v4l2:/dev/video0 --profile=low-latency --no-correct-pts --fps=60 --opengl-glfinish=no --opengl-swapinterval=0'
