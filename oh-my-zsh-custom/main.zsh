# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
#
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
#
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
# User configuration
#
# All my personal configs are here so as not to overwrite the default Oh My Zsh
# zshrc file. Keeping a dotfiles version in sync by hand with theirs it's too hard.
ZSH_THEME="dracula"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode yarn)

# Enable history search in vi mode
bindkey '^R' history-incremental-search-backward

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

eval "$(nodenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Created by `pipx` on 2024-09-03 09:48:23
export PATH="$PATH:/Users/pau/.local/bin"

# Enable pipx autocompletion. Oh My Zsh has autocompletion enabled by default
# so no need to call `compinit`.
eval "$(register-python-argcomplete pipx)"
