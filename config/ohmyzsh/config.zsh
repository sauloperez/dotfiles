# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Version managers
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

if [[ -d "$HOME/.pyenv" && -x "$HOME/.pyenv/bin/pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init - zsh)"
fi

if [[ "$OSTYPE" != "darwin"* ]]; then
  # Map ctrl to caps lock
  gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"
fi


# Omakub
export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omakub/bin:$PATH"
export OMAKUB_PATH="/home/$USER/.local/share/omakub"

# opencode
export PATH=/home/pau/.opencode/bin:$PATH
