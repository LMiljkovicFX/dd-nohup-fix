#!/bin/bash

read -p "path to image| " img
read -p "select device| " dev
read -p "type block size| " bs

log="/tmp/nohup.out"

nohup dd if=$img of=$dev bs=$bs status=progress > "$log" 2>&1 &
dd_pid=$!     	
tail -f "$log" --pid="$dd_pid" 
rm -rf "$log"
echo "Done!"
