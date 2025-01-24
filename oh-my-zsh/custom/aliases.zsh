# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias @pj="cd ~/Projects"
alias @p="cd ~/Projects/personal"
alias @w="cd ~/Projects/work"
alias h="history"
alias j="jobs"

# Refresh shell
alias reload="source ~/.zshrc"

# List all files in long format
alias lsl="ls -lF"

# List all files colorized in long format, including dot files
alias lsa="ls -laF"

# List only directories
alias lsd="ls -ld -- */"

# Print working directory and copy to clipboard
alias cpwd="pwd | tee >(tr -d '\n' | pbcopy)"

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Kill all port forwarding
alias kill-port="(ps aux | grep -i port-for | grep -v grep | awk {'print \$2'}| xargs kill)"

# Git
alias g="git"

# Kubernetes
alias k="kubectl"

# pnpm
alias pn="pnpm"