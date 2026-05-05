#!/usr/bin/env bash

# Shared helper functions used by the SSHGuard scripts.

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_info() {
    printf "%b[INFO]%b %s\n" "$BLUE" "$NC" "$1"
}

print_success() {
    printf "%b[OK]%b %s\n" "$GREEN" "$NC" "$1"
}

print_warning() {
    printf "%b[WARN]%b %s\n" "$YELLOW" "$NC" "$1"
}

print_error() {
    printf "%b[ERROR]%b %s\n" "$RED" "$NC" "$1" >&2
}

require_file() {
    local file="$1"

    if [[ ! -f "$file" ]]; then
        print_error "File not found: $file"
        return 1
    fi
}

require_directory() {
    local directory="$1"

    if [[ ! -d "$directory" ]]; then
        print_error "Directory not found: $directory"
        return 1
    fi
}

require_root() {
    if [[ "${EUID:-$(id -u)}" -ne 0 ]]; then
        print_error "This action requires root privileges."
        return 1
    fi
}

is_valid_ip() {
    local ip="$1"
    local part
    local -a parts

    [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || return 1

    IFS='.' read -r -a parts <<< "$ip"
    for part in "${parts[@]}"; do
        if ((10#$part > 255)); then
            return 1
        fi
    done
}
