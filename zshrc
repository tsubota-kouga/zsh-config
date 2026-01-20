ZSH_DIR="$HOME/.config/zsh/"

export SHELDON_CONFIG_DIR="$ZSH_DIR"
export SHELDON_CONFIG_FILE="$SHELDON_CONFIG_DIR/sheldon.toml"
eval "$(sheldon source)"

source "$ZSH_DIR/alias.zsh"
source "$ZSH_DIR/core.zsh"
source "$ZSH_DIR/completion.zsh"
source "$ZSH_DIR/env.zsh"
source "$ZSH_DIR/history.zsh"
source "$ZSH_DIR/tools.zsh"
