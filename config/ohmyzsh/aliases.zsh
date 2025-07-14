# File system
alias ls='eza -lh --group-directories-first --icons=auto'
alias lt='eza --tree --level=2 --long --icons --git'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias a='z'
alias d='cd ~/.dotfiles'

# Utilities
alias grep='GREP_COLOR="1;37;45" LANG=C grep --color=auto'
alias h="omz_history"
alias view="nvim -R"
alias timestamp="date +%s"
alias n='nvim'

# Git aliases. Note that most of them depend on an alias already defined in
# gitconfig.
alias gap="g add -p"
alias gpl="g pull"
alias gs="g st"
alias gl="g lg"
alias gdc="g dfc"
alias gcom="g co main 2> /dev/null || g co master"
alias gw="g show" # `gs` would clash with Ghost Script
alias grim="g rebase -i main || g rebase -i master"
alias gca="gc --amend"
