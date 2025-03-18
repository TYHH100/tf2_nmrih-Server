#!/usr/bin/sh
screen_name="l4d2"
screen -x -S $screen_name -p 0 -X stuff ./start.sh
screen -x -S $screen_name -p 0 -X stuff "\n"