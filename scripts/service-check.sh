#!/bin/bash

SERVICE="nginx"

echo "===== Nginx Health Check ====="
echo

if systemctl is-active --quiet "$SERVICE"; then
    echo "[OK] Nginx is running"
else
    echo "[WARNING] Nginx is not running"
fi
