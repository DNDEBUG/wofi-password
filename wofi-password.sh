#!/bin/bash
PASSFILE=$(ls PASS_DIR_HERE | wofi --show dmenu)
ITER=$(wofi --show dmenu --password)
PASS=$(wofi --show dmenu --password)
openssl aes256 -d -iter $ITER -in $PASSFILE -k $PASS | wofi --show dmenu | awk '{print $2}' | wl-copy
