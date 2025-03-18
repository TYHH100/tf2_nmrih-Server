#!/usr/bin/sh
screen_name="tf2-4v4"
screen -x -S $screen_name -p 0 -X stuff ./start_4v4.sh
screen -x -S $screen_name -p 0 -X stuff "\n"