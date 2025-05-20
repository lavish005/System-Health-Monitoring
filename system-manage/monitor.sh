#!/bin/bash

source ./functions/cpu_usage.sh
source ./functions/memory_usage.sh
source ./functions/disk_usage.sh
source ./functions/network_status.sh
source ./functions/show_all.sh
source ./utils/log.sh

while true; do
    CHOICE=$(whiptail --title "System Health Monitor" --menu "Select an option" 20 60 10 \
        "1" "CPU Usage" \
        "2" "Memory Usage" \
        "3" "Disk Usage" \
        "4" "Network Status" \
        "5" "Show All Stats" \
        "6" "View Log File" \
        "7" "Exit" 3>&1 1>&2 2>&3)

    case $CHOICE in
        1) cpu_usage ;;
        2) memory_usage ;;
        3) disk_usage ;;
        4) network_status ;;
        5) show_all ;;
        6) whiptail --textbox "$LOG_FILE" 25 80 ;;
        7) break ;;
        *) whiptail --msgbox "Invalid option!" 10 40 ;;
    esac
done
