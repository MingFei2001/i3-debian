#!/usr/bin/env bash
# =======================================================
#     _________       ____       __    _
#    /  _/__  /      / __ \___  / /_  (_)___ _____
#    / /  /_ <______/ / / / _ \/ __ \/ / __ `/ __ \
#  _/ / ___/ /_____/ /_/ /  __/ /_/ / / /_/ / / / /
# /___//____/     /_____/\___/_.___/_/\__,_/_/ /_/
# =======================================================
# Author: Tham Ming Fei
# Description: This script installs essential components
# for a functional desktop environment and performs cleanup.
# =======================================================

# Define a log file
LOGFILE="install_log.txt"

# Define a list of essential components
COMPONENTS=(
    "xorg"
    "i3"
    "dmenu"
    "kitty"
    "xclip" # or clipman if this doesn't work
    "arandr"
    "picom"
    "ffmpeg"
)

# Function to display the menu
show_menu() {
    clear
    echo "========================================"
    echo "      I3 Debian Installtion Script       "
    echo "========================================"
    echo "1. Install now"
    echo "2. Exit"
    echo "========================================"
    echo -n "Choose an option: "
}

# Function to install components
install_components() {
    echo "========================================" | tee -a "$LOGFILE"
    echo "Starting installation..." | tee -a "$LOGFILE"
    for COMPONENT in "${COMPONENTS[@]}"; do
        echo "Installing $COMPONENT..." | tee -a "$LOGFILE"
        if sudo apt install -y "$COMPONENT" >> "$LOGFILE" 2>&1; then
            echo "$COMPONENT installation successful." | tee -a "$LOGFILE"
        else
            echo "Error installing $COMPONENT. Check $LOGFILE for details." | tee -a "$LOGFILE"
        fi
    done
    echo "Installation complete." | tee -a "$LOGFILE"
}

setting_up() {
    # Work In Progress
}

# Function to perform cleanup
perform_cleanup() {
    echo "Performing cleanup..." | tee -a "$LOGFILE"
    sudo apt autoremove -y >> "$LOGFILE" 2>&1
    sudo apt clean >> "$LOGFILE" 2>&1
    echo "Cleanup complete." | tee -a "$LOGFILE"
    echo "========================================" | tee -a "$LOGFILE"
}

# Main loop
while true; do
    show_menu
    read -r OPTION
    case $OPTION in
        1)
            read -p "Are you sure you want to install all components? (y/n): " CONFIRM
            if [[ $CONFIRM == [Yy] ]]; then
                install_components
                setting_up
                perform_cleanup
                echo "All components installed and cleanup completed." | tee -a "$LOGFILE"
                echo "Please reboot now" | tee -a "$LOGFILE"
            else
                echo "Installation aborted." | tee -a "$LOGFILE"
            fi
            break
            ;;
        2)
            echo "Exiting ..." | tee -a "$LOGFILE"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
