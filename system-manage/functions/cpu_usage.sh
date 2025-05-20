#!/bin/bash
source ./utils/log.sh

cpu_usage() {
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    log "CPU Usage: $CPU%"
    whiptail --title "CPU Usage" --msgbox "Current CPU Usage: $CPU%" 10 50
}
