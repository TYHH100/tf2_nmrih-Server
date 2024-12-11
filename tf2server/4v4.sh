#!/bin/sh
./srcds_run -game tf +map pass_stonework_a24 +ip 0.0.0.0 -port 27030  +maxplayers 20 -refreshrate 30 +sm_basepath addons/sourcemod_4v4 +servercfgfile 4v4/4v4-server.cfg -autoupdate -steam_dir /home/steamcmd -steamcmd_script /home/steamcmd/tf2up.txt
#-tickrate 128
#-unrestricted_maxplayers 100
