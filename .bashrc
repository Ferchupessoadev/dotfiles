# Exports
# editor
export EDITOR=nvim

# docker format
export DOCKER_FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nPORT\t{{.Ports}}\nStatus\t{{.Status}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSize\t{{.Size}}\n"


#  ALIAS

# GIT
alias gst="git status --short"
alias gp="git push"
alias gpull="git pull"
alias gcr="git commit -m 'Upgrade README'"
alias gupdoc="bash /home/ferchodev/.local/bin/gupreadme"

# NVIM
alias vi="nvim"
alias cdvi="nvim /home/ferchodev/.config/nvim/init.lua"

# navigating
alias ls="lsd"
alias cat="batcat"
alias ..="cd .."
alias l="ls"

export PS1=" \[\e[31m\] \u \[\e[m\]\[\e[32m\] \w\[\e[m\]\[\e[35m\]\`git_status_promt\`\[\e[m\]\\n 󱞩 "
export TERM=st
