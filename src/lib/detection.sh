#!/usr/bin/env bash

# Member 3 task: implement attack detection logic.
#
# Required:
# - Use parser.sh output.
# - Count how many failed attempts each IP address has.
# - Compare the count with THRESHOLD from config.conf.
# - Print suspicious IP addresses.
#
# Example:
#   If THRESHOLD=5 and one IP appears 5 times, mark it suspicious.
#
# Example function to complete:
#
# detect_suspicious_ips() {
#     local log_file="$1"
#     local threshold="$2"
#     # TODO: call extract_failed_ips
#     # TODO: sort IPs
#     # TODO: count repeated IPs
#     # TODO: show only IPs greater than or equal to threshold
# }
