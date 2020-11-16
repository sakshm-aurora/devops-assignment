#! /bin/bash
path = "/home/ubuntu/audios/"
find "$path" -type f -name "*.wav" -mtime +2 -printf '%f\t%T+\t' -exec date '+%F+%H:%M:%S.%N' \; -delete >>  deleted-files-`date+%F`.log 