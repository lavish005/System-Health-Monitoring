#!/bin/bash
source ./utils/log.sh

memory_usage() {
    MEM=$(free -m | awk '/Mem:/ {printf("%.2f", $3/$2 * 100.0)}')
    log "Memory Usage: $MEM%"
    whiptail --title "Memory Usage" --msgbox "Memory Usage: $MEM%" 10 50
}
