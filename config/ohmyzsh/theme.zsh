DRACULA_THEME="$HOME/.config/ohmyzsh/themes/dracula"

if [[ ! -f $ZSH/themes/dracula.zsh-theme ]]; then
  ln -s $DRACULA_THEME/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme
fi

# Default theme. Can be overriden by ~/.zshrc
ZSH_THEME="dracula"
