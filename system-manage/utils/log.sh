#!/bin/bash

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/system_log.txt"


mkdir -p "$LOG_DIR"
touch "$LOG_FILE"


log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}
