setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt share_history

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

setopt extended_glob
setopt globdots

setopt noclobber

bindkey -v
bindkey -M vicmd '^r' history-incremental-search-backward
bindkey -M viins '^r' history-incremental-search-backward

KEYTIMEOUT=1

# mode change
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '\e[1 q'  # block
  else
    echo -ne '\e[5 q'  # beam
  fi
}
zle -N zle-keymap-select

# reset cursor to beam
function precmd {
  echo -ne '\e[5 q'
}

