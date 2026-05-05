#!/usr/bin/env bash

# Member 5 task: implement the main controller.
#
# Required:
# - Load config.conf.
# - Source all files from src/lib.
# - Handle options:
#   -h help
#   -d detect attacks
#   -b block detected IPs
#   -l show log directory
#   -r restore/unblock IPs
#   -f fork mode
#   -t thread/background mode
#   -s subshell mode
# - Call the correct functions from parser, detection, blocking, and logging.
#
# Suggested functions:
# - show_help
# - run_detection
# - run_blocking
# - main
