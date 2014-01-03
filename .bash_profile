# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

# Makes Mysql work with Rails
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
USE_CACHE=true

# Autocomplete git commands and branch names
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
