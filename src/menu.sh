#!/bin/bash

source src/monitor.sh

main_menu() {
    while true; do
        clear
        echo "=============================="
        echo " Linux User Monitoring Tool"
        echo "=============================="
        echo "1) Show connected users"
        echo "2) Detailed sessions"
        echo "3) Detect root login"
        echo "4) Real-time monitoring"
        echo "5) Show login history"
        echo "6) Exit"
        echo "------------------------------"

        read -p "Choose: " choice

        case "$choice" in
            1) show_users ;;
            2) detailed_sessions ;;
            3) detect_root ;;
            4) realtime_monitor ;;
            5) login_history ;;
            6) exit 0 ;;
            *) echo "Invalid option"; sleep 1 ;;
        esac
    done
}
