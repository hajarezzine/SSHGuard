#!/usr/bin/env bash

# Member 4 task: implement IP blocking and restore.
#
# Required:
# - Block suspicious IPs using iptables.
# - Save blocked IPs inside logs/blocked_ips.log.
# - Avoid blocking the same IP many times.
# - Add restore/unblock functionality.
#
# Commands to use:
#   iptables -A INPUT -s IP -j DROP
#   iptables -D INPUT -s IP -j DROP
#
# Example functions to complete:
#
# block_ip() {
#     local ip="$1"
#     # TODO: validate IP
#     # TODO: check root permissions
#     # TODO: block IP using iptables
#     # TODO: save IP to blocked_ips.log
# }
#
# restore_blocked_ips() {
#     # TODO: read blocked_ips.log
#     # TODO: unblock each IP using iptables
#     # TODO: clear blocked_ips.log
# }
