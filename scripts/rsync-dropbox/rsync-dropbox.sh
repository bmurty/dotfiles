#!/usr/bin/env bash

#
# Using rsync to mount a synced Dropbox folder
#
# Requirements:
#  - Debian based Linux distribution
#  - A remote rclone sync has already been configured using the name of "dropbox"
#  - This file should be located at: /home/USERNAME/rsync-dropbox.sh
#  - This file must be run via: sudo /home/USERNAME/rsync-dropbox.sh
#
# Optional:
#  - Add aliases to ~/.bashrc:
#     alias dropboxmount="sudo /home/USERNAME/rsync-dropbox.sh"
#     alias dropboxunmount="sudo fusermount -u /home/USERNAME/Dropbox"
#     alias dropboxlogs="tail -f -n 20 /home/USERNAME/rsync-dropbox.log"
#

SCRIPT_DIR=$(dirname "$0")
LOG_FILE=$SCRIPT_DIR/rsync-dropbox.log

# Exit early if the env file doesn't exist

if [ ! -e ./.env ]; then
  echo "Cancelled, file not found: .env"
  echo "Initialising file, please edit that and try again."
  cp -n ./rsync-dropbox.sample.env ./rsync-dropbox.env
  exit 1
fi

# Load the env vars

source ./rsync-dropbox.env

# Preparing aliases

alias rclone="$RCLONE_BIN"
alias fusermount="$FUSERMOUNT_BIN"

# Initialise the log file

touch $LOG_FILE
truncate -s 0 $LOG_FILE
chown $USER_ID:$USER_ID $LOG_FILE

# Start the rclone mount in the background

rclone mount \
--vfs-cache-mode=full \
--config=$CONFIG_FILE \
--cache-dir=$CACHE_DIR \
--log-file=$LOG_FILE \
--log-level=INFO \
--dropbox-batch-mode=sync \
--transfers=64 \
--uid=$USER_ID \
--gid=$USER_ID \
--allow-other \
--allow-non-empty \
dropbox: $DROPBOX_DIR &

exit 0
