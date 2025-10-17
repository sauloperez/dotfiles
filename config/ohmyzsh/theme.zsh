DRACULA_THEME="$HOME/.config/ohmyzsh/themes/dracula"

if [[ ! -d $DRACULA_THEME ]]; then
  git clone https://github.com/dracula/zsh.git "$DRACULA_THEME"
fi

if [[ ! -f $ZSH/themes/dracula.zsh-theme ]]; then
  ln -s $DRACULA_THEME/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
fi

# Default theme. Can be overriden by ~/.zshrc
ZSH_THEME="dracula"
