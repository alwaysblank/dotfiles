# Prefer VSCode locally, nano over SSH.
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nano"
else
  export EDITOR="vi"
  export VISUAL="vi"
fi

# Central timezone.
export TZ="America/LosAngeles"

# Consistent default $PATH.
[[ -r /etc/paths ]] && export PATH=`cat /etc/paths | tr "\\n" ":" | sed 's/:$//'`
export PATH="/usr/local/sbin:${PATH}"
export PATH="${HOME}/.local/bin:${PATH}"

# Linux Brew if not on macOS.
[[ -d ~/.linuxbrew ]] && eval $(~/.linuxbrew/bin/brew shellenv)
[[ -d /home/linuxbrew/.linuxbrew ]] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# GNU Command Line Tools.
[[ -x "$(command -v brew)" ]] && export PATH="$(brew --prefix coreutils)/libexec/gnubin:${PATH}"

# Dotfiles location.
[[ -x "$(command -v homesick)" ]] && export DOTFILES=`homesick show_path dotfiles`

# Global Composer bin.
export GLOBAL_COMPOSER_BIN="${HOME}/.composer/vendor/bin"

# Global yarn bin.
[[ -x "$(command -v yarn)" ]] && export GLOBAL_YARN_BIN="$(yarn global dir)/node_modules/.bin"

# Local node modules bin.
export LOCAL_NODE_MODULES_BIN="./node_modules/.bin"

# Local Composer bin.
export LOCAL_COMPOSER_BIN="./vendor/bin"

# Add our own paths to $PATH.
export PATH="${PATH}:${DOTFILES}/bin"
export PATH="${PATH}:${GLOBAL_COMPOSER_BIN}"
export PATH="${PATH}:${LOCAL_COMPOSER_BIN}"
export PATH="${PATH}:${GLOBAL_YARN_BIN}"
export PATH="${PATH}:${LOCAL_NODE_MODULES_BIN}"

# For historical purposes.
export HISTSIZE=10000
export SAVEHIST=8500

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi