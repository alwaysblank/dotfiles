# Shortcuts
alias home='cd ~'
alias storage='cd ~/Storage'
alias desktop='cd ~/Desktop'
alias dev='cd ~/Development'
alias sites='cd ~/Development/web/'
alias master='cd ~/Development/git/master'
alias forks='cd ~/Development/git/forks'

# Apps
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

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

# Valet
alias v='valet link && valet park && valet secure'
alias uv='valet unlink && valet forget && valet unsecure'

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