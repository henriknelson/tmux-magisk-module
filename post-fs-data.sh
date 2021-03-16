#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
chcon -hR u:object_r:system_file:s0 $MODDIR
chcon -hR u:object_r:shell_data_file:s0 /data/local/tmp/tmux
# This script will be executed in post-fs-data mode
