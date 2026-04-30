#!/usr/bin/env bash

# Member 1 task: implement project logging.
#
# Required:
# - Create a function named log_event.
# - Save events inside logs/history.log.
# - Use this format:
#   YYYY-MM-DD-HH-MM-SS : USER : TYPE : MESSAGE
# - Handle errors if the log directory does not exist.
#
# Example function to complete:
#
# log_event() {
#     local type="$1"
#     local message="$2"
#     # TODO: create timestamp
#     # TODO: get current user
#     # TODO: write formatted message to history log
# }
