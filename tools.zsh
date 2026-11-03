eval "$(pyenv init -)"
eval "$(starship init zsh)"
(( $+commands[direnv] )) && eval "$(direnv hook zsh)"
