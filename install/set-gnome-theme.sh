DOTFILES_DIR="$HOME/.dotfiles"
THEME_COLOR="purple"
BACKGROUND_PATH="$DOTFILES_DIR/config/theme/background.jpg"

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-$THEME_COLOR-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-$THEME_COLOR"
gsettings set org.gnome.desktop.interface accent-color "$THEME_COLOR" 2>/dev/null || true

gsettings set org.gnome.desktop.background picture-uri $BACKGROUND_PATH
gsettings set org.gnome.desktop.background picture-uri-dark $BACKGROUND_PATH
gsettings set org.gnome.desktop.background picture-options 'zoom'
