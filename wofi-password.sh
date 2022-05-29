#!/bin/bash
PASSDIR="INSERT_DIR_HERE"
PASSFILE=$(ls $PASSDIR | wofi --show dmenu)
ITER=$(wofi --dmenu -p iter --normal-window -L 1 --password)
PASS=$(wofi --dmenu -p password --normal-window -L 1 --password)
openssl aes256 -d -iter $ITER -in $PASSFILE -k $PASS | wofi --show dmenu | awk '{printf $2}' | wl-copy
