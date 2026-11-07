#!/bin/bash

read -e -p "path to image| " img
read -e -p "select device| " dev
read -p "type block size(return to skip)| " bs2

bs="bs=$bs2"
if [[ $bs2 = ''  ]];
then
	bs=''
fi

log="/tmp/nohup.out"

nohup dd if=$img of=$dev $bs status=progress > "$log" 2>&1 &
dd_pid=$!     	
tail -f "$log" --pid="$dd_pid" 
rm -rf "$log"
echo "Done!"
