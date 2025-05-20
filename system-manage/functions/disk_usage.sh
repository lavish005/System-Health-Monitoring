#!/bin/bash
source ./utils/log.sh

disk_usage() {
    DISK=$(df -h / | awk 'NR==2 {print $5}')
    log "Disk Usage: $DISK"
    whiptail --title "Disk Usage" --msgbox "Disk Usage (Root): $DISK" 10 50
}
