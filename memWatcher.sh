#!/bin/bash

echo "" > memWatcherLog
while(true)
do
free=$(head -2 /proc/meminfo | tail -1 | awk '{print $2}')
swap=$(head -16 /proc/meminfo | tail -1 | awk '{print $2}')
let free=$free/1024
let swap=$swap/1024
echo "$free $swap" >> memWatcherLog
done
