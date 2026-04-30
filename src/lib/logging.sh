#!/usr/bin/env bash

# Logging functions for SSHGuard.

log_event() {
    local type="$1"
    local message="$2"
    local log_file="${HISTORY_LOG:-logs/history.log}"
    local log_directory
    local timestamp
    local user_name

    log_directory="$(dirname "$log_file")"
    timestamp="$(date '+%Y-%m-%d-%H-%M-%S')"
    user_name="${USER:-$(whoami 2>/dev/null || printf 'unknown')}"

    if [[ ! -d "$log_directory" ]]; then
        mkdir -p "$log_directory" || {
            print_error "Cannot create log directory: $log_directory"
            return 1
        }
    fi

    printf "%s : %s : %s : %s\n" "$timestamp" "$user_name" "$type" "$message" >> "$log_file" || {
        print_error "Cannot write to log file: $log_file"
        return 1
    }
}
