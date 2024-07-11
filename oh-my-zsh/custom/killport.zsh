# Kills all processes running on a specific port
# Usage: killport <port>
killport() {
  if [ -z "$1" ]; then
    echo "Usage: killport <port>"
    return 1
  fi

  PIDS=$(lsof -ti :$1)

  if [ -n "$PIDS" ]; then
    echo "$PIDS" | while read -r PID; do
      kill -9 $PID
      if [ $? -eq 0 ]; then
        echo "Successfully killed process with PID $PID on port $1"
      else
        echo "Failed to kill process with PID $PID on port $1"
      fi
    done
  else
    echo "No process found running on port $1"
  fi
}
