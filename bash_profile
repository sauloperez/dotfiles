source ~/.profile

# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

# To avoid JVM OutOfMemoryError when running Maven
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'

# Makes Mysql work with Rails
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Autocomplete git commands and branch names
# install via: brew install git bash-completion
# Further details in: https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

source ~/.tmuxinator.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add extra gemrc with Redbooth's settings
[[ -f $HOME/.gemrc_local ]] && export GEMRC=$HOME/.gemrc_local

export NVM_DIR="/Users/pau/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Use Homebrew's PHP CLI instead of the one bundled with OS X
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
