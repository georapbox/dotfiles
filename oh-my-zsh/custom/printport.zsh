# Prints all processes running on a specific port
# Usage: printport <port> [--full]
# If --full is provided, the full output of lsof is shown
printport() {
  if [ -z "$1" ]; then
    echo "Usage: port <port> [--full]"
    return 1
  fi

  if [ "$2" = "--full" ]; then
    lsof -i :$1
  else
    lsof -ti :$1
  fi
}
