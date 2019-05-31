# Replacements
[[ -x "$(command -v exa)" ]] && alias ls='exa -la'
[[ -x "$(command -v bat)" ]] && alias cat='bat'
[[ -x "$(command -v vtop)" ]] && alias top='vtop'
[[ -x "$(command -v fkill)" ]] && alias kill='fkill'
[[ -x "$(command -v fd)" ]] && alias find='fd'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo'ed
alias sudo='sudo '

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0'
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Laravel
alias art='php artisan'
alias artisan='php artisan'

# WordPress
alias sage='cd web/app/themes/$(wp option get template)'

# Git
alias ga='git add'
alias gm='git commit -m'
alias gp='git push'
alias gpu='git pull'

# zshmarks
alias g='jump'
alias s='bookmark'
alias d='deletemark'
alias lm='showmarks'

# Editing
alias edit='code-insiders'