#!/bin/bash

log_dir="$HOME/openport.log"
mkdir -p "$log_dir"
timeStamp= $(date +%F_%T)
log_file="$log_dir/openPorts_$timeStamp.log"

echo "Open ports scan -$timeStamp" | tee -a "$log_file"
echo "_____________________________" | tee -a "$log_file"

# Checking open ports with ss command
echo -e "\nChecking open ports..." | tee -a "$log_file"
ss -tuln | tee -a "$log_file"

# Confirm completion
echo "Open Ports check completed!" | tee -a "$log_file"

# Notify user
notify-send "Port Scan Complete" "Check the open ports log at $log_file"


