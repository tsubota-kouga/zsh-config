
export EDITOR=nvim

export XMODIFIERS='@im=fcitx'

# volta
export PATH="$PATH:$HOME/.volta/bin"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# rustup
export CARGO_HOME="$HOME/.cargo"
export RUSTUP_HOME="$HOME/.rustup"
export PATH="$CARGO_HOME/bin:$PATH"

# openssl
OPENSSL_PATH=$(nix-store -qR $(which openssl) | grep "openssl.*[^-bin]$" | head -1)
export PKG_CONFIG_PATH="$OPENSSL_PATH/lib/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="$OPENSSL_PATH/lib:$LD_LIBRARY_PATH"
