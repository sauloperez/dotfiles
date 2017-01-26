# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

# To avoid JVM OutOfMemoryError when running Maven
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'

# Autocomplete git commands and branch names
# install via: brew install git bash-completion
# Further details in: https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
