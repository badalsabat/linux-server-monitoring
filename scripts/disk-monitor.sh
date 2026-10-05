!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk Usage: $USAGE%"

if [ "$USAGE" -ge 80 ]; then
    echo "WARNING: Disk usage is above 80%!"
else
    echo "Disk usage is normal."
fi
