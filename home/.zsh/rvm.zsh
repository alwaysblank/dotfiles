# Use RVM if it is available.
if [ -r ~/.rvm/scripts/rvm ]; then
  # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
  export PATH="$PATH:$HOME/.rvm/bin"

  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi
