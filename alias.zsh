
compdef eza=ls
alias ls='eza --icons'
alias ll='eza -lah --git --icons'
alias lt='eza --tree --icons'

function mkdircd(){ mkdir -p $@ && cd $_ }

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias -g L='| less'
alias -g G='| grep --color'
alias -g M='| more'
alias -g S='| sort'
alias -g C='| xsel --input --clipboard'

