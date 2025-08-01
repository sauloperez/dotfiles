# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Version managers
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Map ctrl to caps lock
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

# Omakub
export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omakub/bin:$PATH"
export OMAKUB_PATH="/home/$USER/.local/share/omakub"

# opencode
export PATH=/home/pau/.opencode/bin:$PATH
