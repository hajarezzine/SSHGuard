#!/usr/bin/env bash

# Member 2 task: implement SSH log parsing.
#
# Required:
# - Read the SSH authentication log file.
# - Search for lines containing "Failed password".
# - Extract IP addresses from those lines.
# - Print one IP address per line.
#
# Default log file:
#   /var/log/auth.log
#
# Example function to complete:
#
# extract_failed_ips() {
#     local log_file="$1"
#     # TODO: check if log file exists
#     # TODO: grep failed SSH login attempts
#     # TODO: extract IP addresses
# }
