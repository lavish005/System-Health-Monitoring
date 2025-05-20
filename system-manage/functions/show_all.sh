#!/bin/bash
source ./functions/cpu_usage.sh
source ./functions/memory_usage.sh
source ./functions/disk_usage.sh
source ./functions/network_status.sh

show_all() {
    cpu_usage
    memory_usage
    disk_usage
    network_status
}
