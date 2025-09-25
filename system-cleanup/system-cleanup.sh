#!/bin/bash

# Script to perform various system cleanup tasks to free up disk space.
# WARNING: This script uses 'sudo' and will ask for your password.

# --- Pre-run Checks ---
# Check if the script is being run in an interactive terminal. Sudo needs it for the password.
if ! [ -t 0 ]; then
  echo "Error: This script must be run in an interactive terminal to handle the sudo password prompt."
  exit 1
fi

# --- Colors for formatting ---
C_BLUE="\033[1;34m"
C_GREEN="\033[1;32m"
C_RESET="\033[0m"

echo -e "${C_BLUE}--- System Cleanup Initiated ---${C_RESET}"
echo "This script requires sudo access and may prompt for your password."

# --- APT Cache Cleanup ---
echo -e "\n${C_GREEN}[1/4] Cleaning APT package cache...${C_RESET}"
sudo apt-get clean -y

# --- Autoremove Unused Packages ---
echo -e "\n${C_GREEN}[2/4] Removing unused packages (autoremove)...${C_RESET}"
sudo apt-get autoremove -y

# --- Log File Cleanup ---
echo -e "\n${C_GREEN}[3/4] Removing old log files from /var/log...${C_RESET}"
# This removes rotated log files (.gz, .1, etc.)
sudo find /var/log -name "*.gz" -o -name "*.1" -o -name "*.log.*" -delete
echo "Old log files removed."

# --- Temporary File Cleanup ---
echo -e "\n${C_GREEN}[4/4] Removing temporary files older than 7 days from /tmp...${C_RESET}"
# This command finds and deletes files in /tmp that haven't been accessed in over 7 days.
sudo find /tmp -type f -atime +7 -delete
echo "Old temporary files removed."


echo -e "\n${C_BLUE}--- Cleanup Complete ---${C_RESET}"
exit 0
