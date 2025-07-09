alias ll='tree --dirsfirst -ChFupDaLg 1'
alias a='z'

# Utilities
alias grep='GREP_COLOR="1;37;45" LANG=C grep --color=auto'
alias h="omz_history"
alias view="nvim -R"
alias timestamp="date +%s"
alias copy="xsel -ib"

# Git aliases. Note that most of them depend on an alias already defined in
# gitconfig.
alias gap="g add -p"
alias gpl="g pull"
alias gs="g st"
alias gl="g lg"
alias gdc="g dfc"
alias gcom="g co main || g co master"
alias gw="g show" # `gs` would clash with Ghost Script
alias grim="g rebase -i main || g rebase -i master"
