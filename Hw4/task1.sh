
#!/bin/bash

# Listing the processes related to infinite.sh before killing
echo "Processes before killing:"
ps aux | grep 'infinite.sh' | grep -v grep

# Killing infinite.sh process
PID=$(ps aux | grep 'infinite.sh' | grep -v grep | awk '{print $2}')
if [ -z "$PID" ]; then
  echo "No infinite.sh process running."
else
  kill $PID
  echo "Killed process with PID: $PID"
fi

# List processes after killing
echo "Processes after killing: No process exists."
ps aux | grep 'infinite.sh' | grep -v grep