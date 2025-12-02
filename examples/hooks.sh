#!/usr/bin/env bash

# This file is sourced by spud
# You can override the default functions here to customize behavior.

# Runs when the script first launches
on_start() {
    return 0
}

# Runs when a timer starts
on_timer_start() {
    local TYPE="$1"
    return 0
}

# Runs every minute
on_timer_tick() {
    local TYPE="$1"
    local REMAINING="$2"
    printf "\r%im remaining in %s interval " "$REMAINING" "$TYPE"
}

# Runs when a timer completes
on_timer_end() {
    # $GRACE is available from the main script
    local TYPE="$1"
    printf "\n%s Interval Over! " "${TYPE}"
    pw-cat -p "${CONFIG_DIR}/notification.wav" &
    notify-send --transient --expire-time $(($GRACE*1000)) --app-name "Spud" "${TYPE} Interval Over!"
}

# Runs when the script exits (Ctrl+C)
on_end() {
    # $POMO is available from the main script
    local DONE=$((POMO - 1))
    
    echo ""
    echo "=================================="
    echo " Session Finished"
    echo " Pomodoros Completed: $DONE"
    echo "=================================="
}
