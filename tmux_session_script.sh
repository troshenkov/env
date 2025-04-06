# ===================================================================
# TMUX Session Management Script
# ===================================================================
# Purpose:
#   - Create and manage a tmux session named "dtroshen".
#   - Automatically create three windows (Win_0, Win_1, Win_2) with a tiled layout.
#   - Optionally attach to the tmux session or run it in the background.
#
# Usage:
#   - Run the script to create a tmux session, add windows, and optionally attach.
#   - Set the BACKGROUND variable to true if you prefer the script to run in the background.
#
# Author: Dmitry Troshenkov (troshenkov.d@gmail.com)
# ===================================================================

#!/bin/bash

SESSION_NAME="dtroshen"
WINDOWS=("Win_0" "Win_1" "Win_2")  # Window names array
LOG_FILE="$HOME/tmux_session.log"
BACKGROUND=false  # Set to true if you want to run tmux in the background without attaching

# Logging function
log_message() {
    echo "$(date "+%Y-%m-%d %H:%M:%S") - $1" >> $LOG_FILE
}

# Log start
log_message "Starting tmux session script..."

# Check if the tmux session already exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    log_message "Session '$SESSION_NAME' does not exist. Creating a new one..."

    # Kill the existing session if it exists
    tmux kill-session -t $SESSION_NAME 2>/dev/null

    # Create a new tmux session, with the first window
    tmux new-session -d -s $SESSION_NAME -n "${WINDOWS[0]}" \;

    # Create additional windows dynamically from the array
    for i in "${!WINDOWS[@]:1}"; do
        tmux new-window -n "${WINDOWS[$i]}" \;
    done

    # Optionally set the layout for the windows (tiled, even-horizontal, etc.)
    tmux select-layout -t $SESSION_NAME:0 tiled

    # Select the second window (Win_1)
    tmux select-window -t $SESSION_NAME:1

    log_message "Session '$SESSION_NAME' created with windows: ${WINDOWS[*]}."
fi

# Attach or run in the background based on the BACKGROUND flag
if [ "$BACKGROUND" = true ]; then
    log_message "Running tmux session '$SESSION_NAME' in the background."
else
    log_message "Attaching to tmux session '$SESSION_NAME'."
    tmux attach -t $SESSION_NAME
fi
