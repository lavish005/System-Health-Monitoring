#!/bin/bash
source ./utils/log.sh

network_status() {
    IP=$(hostname -I | awk '{print $1}')
    PING=$(ping -c 1 8.8.8.8 &> /dev/null && echo "Online" || echo "Offline")
    log "Network: IP=$IP, Status=$PING"
    whiptail --title "Network Status" --msgbox "IP Address: $IP\nInternet: $PING" 10 50
}
