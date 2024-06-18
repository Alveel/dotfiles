###########
# ALIASES #
###########

alias cat=bat
alias cls=clear
alias cd='z'
alias ..='cd ..'
alias ...='cd ../..'
alias cdt='cd $(mktemp -d)'
alias ls='eza'
alias l='eza -l'
alias la='eza -la'
alias lao='eza -ld .?*'
alias tree='eza -T'
alias view='vim -R'
alias witch=which

# Network stuff
alias ssh='TERM=xterm-256color ssh'
alias nmc=nmcli
alias nmup='nmcli con up'
alias nmdown='nmcli con down'
alias navpn='systemctl restart openvpn-client@NA.service'

alias paste="curl -F 'f:1=<-' https://0x0.st"

# Ansible
alias a=ansible
alias ag=ansible-galaxy
alias ap=ansible-playbook
alias av=ansible-vault

# Kubernetes
alias k=kubectl
alias kgp='kubectl get po'
alias mc=mcli
alias ct='kubie ctx'
alias ns='kubie ns'

# OpenSSL
alias crtinfo='openssl x509 -text -noout -in'
alias csrinfo='openssl req -text -noout -in'
alias rsainfo='openssl rsa -check -in'

alias by='bat -l yaml'

alias sus='systemctl suspend'
alias poweroff='custom_shutdown poweroff'
alias reboot='custom_shutdown reboot'

# vim: ft=zsh
