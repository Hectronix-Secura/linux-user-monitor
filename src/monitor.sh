#!/bin/bash

LOG_FILE="logs/monitor.log"
mkdir -p logs

log_event() {
    echo "$(date) - $1" >> "$LOG_FILE"
}

show_users() {
    echo "Connected users:"
    who
    read -p "Press Enter..."
}

detailed_sessions() {
    echo "Detailed sessions:"
    w
    read -p "Press Enter..."
}

detect_root() {
    if who | grep -q "root"; then
        echo "⚠️  ROOT USER CONNECTED!"
        log_event "Root login detected"
    else
        echo "No root session detected"
    fi
    read -p "Press Enter..."
}

realtime_monitor() {
    echo "Press CTRL+C to stop"
    sleep 1
    watch -n 2 who
}

login_history() {
    echo "Login history:"
    last | head
    read -p "Press Enter..."
}
