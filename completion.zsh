zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt menu_complete

{
  setopt localoptions nullglob
  for d in \
    /nix/store/*/share/zsh/site-functions \
    /nix/store/*/share/zsh/*/site-functions \
    $HOME/.nix-profile/share/zsh/site-functions
  do
    [[ -d "$d" ]] && fpath=("$d" $fpath)
  done
}

autoload -Uz compinit
compinit
