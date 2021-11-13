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
alias mpv_mixdown='mpv --audio-channels=mono'
alias mpvx='mpv --no-video'
alias soma-defcon='mpv --no-video https://somafm.com/defcon130.pls'
alias :q='exit'

alias mkshell="echo 'eyBwa2dzID8gaW1wb3J0IDxuaXhwa2dzPiB7IH0gfToKCnBrZ3MubWtTaGVsbCB7CiAgYnVpbGRJbnB1dHMgPSB3aXRoIHBrZ3M7IFsKICAgIC8vIEFkZCBwYWNrYWdlcyBoZXJlIDopCiAgXTsKfQo=' | base64 -d > shell.nix"
alias open='xdg-open "`fzf`"'

alias ns="nix-shell -p"
alias nx="nix-shell -p" # I sometimes type `nx` instead of `ns`, so let's alias it too :-)
alias view="nvim"

