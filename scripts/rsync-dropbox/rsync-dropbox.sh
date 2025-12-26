#!/usr/bin/env bash

#
# Using rsync to mount a synced Dropbox folder
#
# Requirements:
#  - Debian based Linux distribution
#  - A remote rclone sync has already been configured using the name of "dropbox"
#  - This file must be located at: /home/USERNAME.local/bin/rsync-dropbox.sh
#  - This file must be run via: sudo /home/USERNAME/.local/bin/rsync-dropbox.sh
#
# Optional:
#  - Add aliases to ~/.bashrc:
#     alias dropboxmount="sudo /home/USERNAME/.local/bin/startup-dropbox-mount.sh"
#     alias dropboxunmount="sudo fusermount -u /home/USERNAME/Dropbox"
#     alias dropboxlogs="tail -f -n 20 /home/USERNAME/.local/bin/startup-dropbox-mount.log"
#

SCRIPT_DIR=$(dirname "$0")
LOG_FILE=$SCRIPT_DIR/rsync-dropbox.log

if [ ! -e ./.env ]; then
  echo "Cancelled, file not found: .env"
  echo "Initialising file, please edit that and try again."
  cp -n ./.env.sample ./.env
  exit 1
fi

echo "Loading env vars from './.env'"

source ./.env

echo "Preparing aliases"

alias rclone="$RCLONE_BIN"
alias fusermount="$FUSERMOUNT_BIN"

echo "Initialising log file '$LOG_FILE'"

touch $LOG_FILE
truncate -s 0 $LOG_FILE
chown $USER_ID:$USER_ID $LOG_FILE

echo "Starting rclone mount in the background"

rclone mount \
--vfs-cache-mode=full \
--config=$CONFIG_FILE \
--cache-dir=$CACHE_DIR \
--log-file=$LOG_FILE \
--log-level=DEBUG \
--dropbox-batch-mode=sync \
--transfers=64 \
--uid=$USER_ID \
--gid=$USER_ID \
--allow-other \
dropbox: $DROPBOX_DIR &

