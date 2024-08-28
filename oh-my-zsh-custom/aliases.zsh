# Dir navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias ll='tree --dirsfirst -ChFupDaLg 1'
alias a='z'

# Utilities
alias grep='GREP_COLOR="1;37;45" LANG=C grep --color=auto'
alias h="history"
alias localip="ipconfig getifaddr en0"
alias view="vim -p -R"
alias vp="vim -p"
alias timestamp="date +%s"
alias copy="pbcopy"
alias tn="telnet 0.0.0.0 4445"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# Git aliases. Note that most of them depend on an alias already defined in
# gitconfig.
alias gg="g g"
alias grv="git remote -v"
alias gc="g ci"
alias gca="gc --amend"
alias ga="g add"
alias gap="g add -p"
alias gaa="g add -A"
alias gpsu="gps upstream"
alias gpl="g pull"
alias gd="g df"
alias gs="g st"
alias gl="g lg"
alias glp="g lg -p"
alias gdc="g dfc"
alias gcom="g co main || g co master"
alias gaa="g add -A"
alias gr="g reset"
alias gw="g show" # `gs` would clash with Ghost Script
alias gra="g ra"
alias grm="g rebase main || g rebase master"
alias grim="g rebase -i main || g rebase -i master"