#!/bin/bash
PASSDIR="INSERT_DIR_HERE"
PASSFILE=$(ls $PASSDIR | wofi --show dmenu)
PASS=$(wofi --dmenu -p Password --normal-window -L 1 --password)
openssl aes256 -d -in $PASSDIR/$PASSFILE -k $PASS -pbkdf2 | wofi --show dmenu | awk '{printf $2}' | wl-copy
