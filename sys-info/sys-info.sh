#!/bin/bash

# Script to display a system information dashboard

# --- Colors for formatting ---
C_BLUE="\033[1;34m"
C_GREEN="\033[1;32m"
C_RESET="\033[0m"

# --- System Information Gathering ---
HOSTNAME=$(hostname)
UPTIME=$(uptime -p)
USER=$(whoami)

# Get the primary IP address for the WSL instance
IP_ADDR=$(hostname -I | awk '{print $1}')

# Memory Usage (using free and awk for a clean output)
MEM_INFO=$(free -h | awk '/^Mem/ {print $3"/"$2 " ("$7" available)"}')

# Disk Usage for the root filesystem
DISK_INFO=$(df -h / | awk 'NR==2 {print $3"/"$2 " ("$5" used)"}')

# CPU Load (a simple average from uptime)
CPU_LOAD=$(uptime | awk -F'load average:' '{print $2}' | sed 's/,//g')

# --- Display Dashboard ---
echo -e "${C_BLUE}--- System Information Dashboard ---${C_RESET}"

echo -e "${C_GREEN}Hostname:${C_RESET}\t\t$HOSTNAME"
echo -e "${C_GREEN}Uptime:${C_RESET}\t\t\t$UPTIME"
echo -e "${C_GREEN}Current User:${C_RESET}\t\t$USER"
echo -e "${C_GREEN}IP Address:${C_RESET}\t\t$IP_ADDR"

echo

echo -e "${C_GREEN}Memory Usage:${C_RESET}\t\t$MEM_INFO"
echo -e "${C_GREEN}Root Disk Usage:${C_RESET}\t$DISK_INFO"
echo -e "${C_GREEN}CPU Load Avg:${C_RESET}\t$CPU_LOAD"

echo -e "${C_BLUE}------------------------------------${C_RESET}"
