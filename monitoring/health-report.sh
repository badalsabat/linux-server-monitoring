#!/bin/bash

echo "======================================"
echo "       LINUX SERVER HEALTH REPORT"
echo "======================================"

echo
echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime -p

echo
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Nginx Status:"
if systemctl is-active --quiet nginx; then
    echo "[OK] Nginx is running"
else
    echo "[WARNING] Nginx is not running"
fi

echo
echo "======================================"
echo "          HEALTH CHECK COMPLETE"
echo "======================================"
