#!/usr/bin/sh
screen_name="nmrih"
screen -x -S $screen_name -p 0 -X stuff ./start.sh
screen -x -S $screen_name -p 0 -X stuff "\n"