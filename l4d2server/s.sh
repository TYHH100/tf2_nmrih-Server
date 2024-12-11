#!/bin/sh
./srcds_run -console -game left4dead2 +ip 0.0.0.0 +port 27035 +maxplayers 31 +map c2m1_highway -tickrate 100 -stringtables +sv_setmax 31 -hltv +tv_enable 1
#+sv_setmax 20